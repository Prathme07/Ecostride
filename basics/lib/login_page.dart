import 'package:flutter/material.dart';
import 'package:basics/home.dart';
import 'package:flutter/services.dart'; // Adjust the import path

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController profileImageController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: const Color.fromARGB(255, 149, 252, 153),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: phoneNumberController,
              maxLength: 10,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              decoration: const InputDecoration(labelText: 'Phone Number'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: profileImageController,
              decoration: const InputDecoration(labelText: 'Profile Image URL'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Get user input
                final String username = usernameController.text;
                final String phoneNumber = phoneNumberController.text;
                final String profileImage = profileImageController.text;

                // Create User object
                final User user = User(username, phoneNumber, profileImage);

                // Set user data
                UserData.setUser(user);

                // Navigate to HomePage
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 149, 252, 153),
                padding: const EdgeInsets.all(16),
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
