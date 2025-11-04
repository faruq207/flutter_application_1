import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Helper/dbHelper.dart';

class ContactController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final names = <String>[].obs;
  final _dbHelper = DBHelper();

  @override
  void onInit() {
    super.onInit();
    fetchNames();
  }

  Future<void> fetchNames() async {
    final data = await _dbHelper.getNames();
    names.value = data.map((e) => e['name'] as String).toList();
  }

  Future<void> addName() async {
    final text = nameController.text.trim();
    if (text.isEmpty) return;
    await _dbHelper.insertName(text);
    nameController.clear();
    await fetchNames();
  }

  Future<void> updateName(int index, String newName) async {
    if (index < 0 || index >= names.length) return;

    final oldName = names[index];
    await _dbHelper.updateName(oldName, newName);
    await fetchNames(); // refresh UI dari DB
  }

  // Hapus nama berdasarkan index
  Future<void> deleteName(int index) async {
    if (index < 0 || index >= names.length) return;

    final nameToDelete = names[index];
    await _dbHelper.deleteName(nameToDelete);
    await fetchNames();
  }

  Future<void> deleteName(int index) async {
    final nameToDelete = names[index];
    final db = await _dbHelper.db;
    await db.delete('contacts', where: 'name = ?', whereArgs: [nameToDelete]);
    names.removeAt(index);
  }

  Future<void> updateName(int index, String newName) async {
    final oldName = names[index];
    final db = await _dbHelper.db;
    await db.update(
      'contacts',
      {'name': newName},
      where: 'name = ?',
      whereArgs: [oldName],
    );
    names[index] = newName;
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }
}
