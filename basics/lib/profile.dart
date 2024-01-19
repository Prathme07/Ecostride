import 'package:basics/home.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color.fromARGB(255, 149, 252, 153),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 149, 252, 153),
              Color.fromARGB(255, 167, 255, 170),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/images.jpeg', // Replace with your image asset path
                    width: 100, // Adjust the width as needed
                    height: 100, // Adjust the height as needed
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'John Doe',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  '+1234567890',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.white),
                  child: const Text('Go Back to Home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
