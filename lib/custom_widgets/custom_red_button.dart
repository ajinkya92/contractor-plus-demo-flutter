import 'package:flutter/material.dart';

class CustomRedButton extends StatelessWidget {
  
  final String buttonText;
  final Function onPressed;
  static const double buttonHeight = 70;

  CustomRedButton({@required this.onPressed, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: buttonHeight,
      child: RawMaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Colors.red.shade800,
        elevation: 3,
        child: Text(buttonText == null ? "" : buttonText, 
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
