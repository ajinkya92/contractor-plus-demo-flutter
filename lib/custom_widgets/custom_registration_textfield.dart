import 'package:flutter/material.dart';

class CustomRegistrationTextField extends StatelessWidget {

  final String hintText;
  final IconData icon;
  final Function(String) onValueChange;
  final bool secureText;

  CustomRegistrationTextField({@required this.hintText, @required this.icon, @required this.onValueChange, this.secureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: TextField(
        obscureText: secureText == null ? false : true,
        cursorColor: Colors.grey.shade400,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icon, color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8),),
            borderSide: BorderSide(color: Colors.grey.shade200)
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8),),
            borderSide: BorderSide(color: Colors.grey.shade200)
          ),
        ),
        onChanged: onValueChange,
      ),
    );
  }
}
