import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  final String message;
  final Color color;
  const Snackbar({super.key, required this.color, required this.message});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text(message),
    );
  }
}
