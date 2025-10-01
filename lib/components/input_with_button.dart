import 'package:flutter/material.dart';

class InputWithButton extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String buttonText;
  final VoidCallback onPressed;

  const InputWithButton({
    super.key,
    required this.controller,
    required this.hintText,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: hintText,
              border: const OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(width: 8),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(buttonText),
        ),
      ],
    );
  }
}
