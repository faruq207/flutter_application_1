import 'package:flutter/material.dart';

class ExampleWidescreen extends StatelessWidget {
  const ExampleWidescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("wide screen"),),
      body: Center(
        child: Text("ini contoh widescreen layout"),
      ),
    );
  }
}