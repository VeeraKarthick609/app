import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  const PasswordField(
      {super.key, required this.controller, required this.hintText});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          obscureText: _isObscure,
          controller: widget.controller,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            suffixIcon: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                }),
            hintText: widget.hintText,
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
