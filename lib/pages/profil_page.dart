import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),
          SizedBox(height: 20),
          Text("Nama: Faruq", style: TextStyle(fontSize: 20)),
          Text("Email: dafi@gmail.com", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
