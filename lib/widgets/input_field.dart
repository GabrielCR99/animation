import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final bool isObscure;
  final IconData icon;

  InputField({this.hint, this.isObscure, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      child: TextFormField(
        obscureText: isObscure,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          labelText: hint,
          labelStyle: TextStyle(color: Colors.white),
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
          contentPadding:
              EdgeInsets.only(top: 30.0, right: 30.0, bottom: 30.0, left: 5.0),
        ),
      ),
    );
  }
}
