import 'package:flutter/material.dart';
import 'package:basics/home.dart';

class TotalSteps extends StatelessWidget {
  const TotalSteps({Key? key}) : super(key: key);

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
        child:  Text("Total Steps are 58"),
      ),
    );
  }
}
