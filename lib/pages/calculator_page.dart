import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/calculator_controller.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final CalculatorController controller = CalculatorController();

  Widget _buildTextField(String label, TextEditingController controller,
      {bool readOnly = false}) {
    return TextField(
      controller: controller,
      readOnly: readOnly,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
    );
  }

  Widget _buildButton(String label) {
    return ElevatedButton(
      onPressed: () => setState(() {
        controller.hitung(label);
      }),
      child: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildTextField("Angka pertama", controller.num1Controller),
            const SizedBox(height: 12),
            _buildTextField("Angka kedua", controller.num2Controller),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              children: [
                _buildButton('+'),
                _buildButton('-'),
                _buildButton('×'),
                _buildButton('÷'),
              ],
            ),
            const SizedBox(height: 20),
            _buildTextField("Hasil", controller.resultController,
                readOnly: true),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => setState(() {
                controller.clearInput();
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: const Text("Clear"),
            ),
          ],
        ),
      ),
    );
  }
}