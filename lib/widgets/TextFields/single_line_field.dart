import 'package:flutter/material.dart';

class SingleLineField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const SingleLineField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(25.0))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(25.0))),
          ),
        ),
      ),
    );
  }
}
