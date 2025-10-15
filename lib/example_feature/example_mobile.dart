import 'package:flutter/material.dart';

class ExampleMobile extends StatelessWidget {
  const ExampleMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ini mobile layout"),),
      body: Center(child: Text("ini contoh layout mobile"),),
    );
  }
}
