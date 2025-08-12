import 'package:flutter/material.dart';

class CalculatorController {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();
  final TextEditingController resultController = TextEditingController();

  void hitung(String operasi) {
    final angka1 = double.tryParse(num1Controller.text);
    final angka2 = double.tryParse(num2Controller.text);

    if (angka1 == null || angka2 == null) {
      resultController.text = "Input tidak valid";
      return;
    }

    double hasil;

    switch (operasi) {
      case '+':
        hasil = angka1 + angka2;
        break;
      case '-':
        hasil = angka1 - angka2;
        break;
      case '×':
        hasil = angka1 * angka2;
        break;
      case '÷':
        if (angka2 == 0) {
          resultController.text = "Tidak bisa bagi 0";
          return;
        }
        hasil = angka1 / angka2;
        break;
      default:
        hasil = 0;
    }

    resultController.text = hasil.toString();
  }

  void clearInput() {
    num1Controller.clear();
    num2Controller.clear();
    resultController.clear();
  }
}