import 'package:basics/home.dart';
import 'package:flutter/material.dart';

class Stored extends StatelessWidget {
  const Stored({Key? key}) : super(key: key);

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
        child:  Text("Energy stored is 58"),
      ),
    );
  }
}
