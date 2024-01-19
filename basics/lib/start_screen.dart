import 'package:flutter/material.dart';
import 'package:basics/profile.dart'; // Import the Profile screen

class StartScreen extends StatelessWidget {
  const StartScreen({
    Key? key,
    required this.energystored,
    required this.energyused,
  }) : super(key: key);

  final void Function() energystored;
  final void Function() energyused;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Profile(), // Use the Profile screen
                ),
              );
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 50),
              const Text("EcoStride", style: TextStyle(fontSize: 28, color: Colors.black)),
              const SizedBox(height: 80),
              OutlinedButton(
                onPressed: energystored,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                  side: const BorderSide(color: Colors.white),
                  minimumSize: const Size(200, 50),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      IconData(0xf0748, fontFamily: 'MaterialIcons'),
                      size: 34,
                      color: Colors.white,
                    ),
                    Text(
                      "Energy Stored",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: energystored,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                  side: const BorderSide(color: Colors.white),
                  minimumSize: const Size(200, 50),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      IconData(0xe4e0, fontFamily: 'MaterialIcons'),
                      size: 34,
                      color: Colors.white,
                    ),
                    Text(
                      "Energy Used",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: energyused,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                  side: const BorderSide(color: Colors.white),
                  minimumSize: const Size(200, 50),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      IconData(0xe1e1, fontFamily: 'MaterialIcons'),
                      size: 34,
                      color: Colors.white,
                    ),
                    Text(
                      "Total Steps",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: energyused,
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green,
                  side: const BorderSide(color: Colors.white),
                  minimumSize: const Size(200, 50),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      IconData(0xf619, fontFamily: 'MaterialIcons'),
                      size: 34,
                      color: Colors.white,
                    ),
                    Text(
                      "Charging",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
