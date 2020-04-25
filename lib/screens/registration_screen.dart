import 'package:flutter/material.dart';
import '../custom_widgets/custom_registration_textfield.dart';
import '../custom_widgets/custom_red_button.dart';

class Registration extends StatelessWidget {
  static const String id = 'registration_screen';

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
                  hintText: 'First name',
                  icon: Icons.person,
                  onValueChange: (value) {
                    print(value);
                  }),
              CustomRegistrationTextField(
                hintText: 'Last name',
                icon: Icons.person,
                onValueChange: (value) {},
              ),
              CustomRegistrationTextField(
                hintText: 'Mobile No.',
                icon: Icons.phone,
                onValueChange: (value) {},
              ),
              CustomRegistrationTextField(
                hintText: 'Email',
                icon: Icons.mail,
                onValueChange: (value) {},
              ),
              CustomRegistrationTextField(
                hintText: 'Password',
                icon: Icons.lock,
                secureText: true,
                onValueChange: (value) {},
              ),
              CustomRedButton(
                buttonText: 'Register',
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

