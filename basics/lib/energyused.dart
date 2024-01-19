import 'package:flutter/material.dart';
import 'package:basics/home.dart';

class Used extends StatelessWidget {
  const Used({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const HomePage(), // Replace with your home page widget
              ),
            );
          },
        ),
      ),
      body: const Center(
        child:  Text("Energy used is 58"),
      ),
    );
  }
}
