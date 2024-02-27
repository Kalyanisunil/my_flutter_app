import 'package:flutter/material.dart';
import 'package:namer_app/styles/appcolor.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        label: Text(hint),
        hintStyle: TextStyle(color: AppColors.black),
        fillColor: Color.fromARGB(114, 255, 255, 255),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
