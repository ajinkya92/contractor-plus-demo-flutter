import '../model/login.dart';
import '../utils/service_handler.dart';
import 'package:flutter/material.dart';
import '../custom_widgets/custom_registration_textfield.dart';
import '../custom_widgets/custom_red_button.dart';
import 'registration_screen.dart';
import '../utils/constant.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'loginPage_screen';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;
  Login loginResponse = Login();

  void login() async {
    if (_email != null && _password != null) {
      try {
        ServiceHandler serviceHandler = ServiceHandler();
        loginResponse = await serviceHandler.getLoginDataWith(
            email: _email.toLowerCase(),
            password: generateMd5(_password.toLowerCase()));
        print(loginResponse.data.userDetails.firstName);
      } catch (e) {
        print(e);
      }
    } else {
      print('Email & Password is required.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 100, 20, 40),
                child: Image.asset(
                  'assets/images/contractor-plus.png',
                  alignment: Alignment.center,
                ),
              ),
              CustomRegistrationTextField(
                  hintText: 'Email',
                  icon: Icons.email,
                  onValueChange: (value) {
                    _email = value;
                  }),
              CustomRegistrationTextField(
                  hintText: 'Password',
                  secureText: true,
                  icon: Icons.lock,
                  onValueChange: (value) {
                    _password = value;
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text('Forgot Password?'),
                    onPressed: () {},
                  )
                ],
              ),
              CustomRedButton(buttonText: 'Login', onPressed: () => login()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Don\'t have an account?'),
                  FlatButton(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.red.shade800,
                      ),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, Registration.id),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
