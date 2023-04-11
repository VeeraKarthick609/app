import 'package:flutter/material.dart';

class MultiLineField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const MultiLineField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(25)),
      child: TextField(
        textAlignVertical: TextAlignVertical.top,
        maxLines: null,
        expands: true,
        keyboardType: TextInputType.multiline,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
        ),
      ),
    );
  }
}
