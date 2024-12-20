import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Hardcoded user info
    String userName = "Riya";
    String email = "Riya73.doe@example.com";
    String phone = "+123 456 7890";
    String address = "123 Main Street, City, Country";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.purple,
                child: Icon(
                  Icons.account_circle,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                userName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildInfoTile("Username", userName, Icons.account_circle),
            const SizedBox(height: 10),
            _buildInfoTile("Email", email, Icons.email),
            const SizedBox(height: 10),
            _buildInfoTile("Phone", phone, Icons.phone),
            const SizedBox(height: 10),
            _buildInfoTile("Address", address, Icons.location_on),
          ],
        ),
      ),
    );
  }

  // Info tile widget to display user info
  Widget _buildInfoTile(String title, String value, IconData icon) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.purple,
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
