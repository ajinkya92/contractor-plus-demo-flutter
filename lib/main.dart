import './screens/login_screen.dart';
import 'package:flutter/material.dart';
import './screens/registration_screen.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.id,
      routes: {
        Registration.id: (context) => Registration(),
        LoginPage.id: (context) => LoginPage()
      },
    );
  }
}