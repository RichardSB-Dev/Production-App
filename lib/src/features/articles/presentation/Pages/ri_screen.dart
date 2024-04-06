import 'package:flutter/material.dart';
import 'package:production_app/src/core/styles/pallete.dart';

class RotacionInventarioScreen extends StatefulWidget {
  const RotacionInventarioScreen({super.key});

  @override
  State<RotacionInventarioScreen> createState() =>
      _RotacionInventarioScreenState();
}

class _RotacionInventarioScreenState extends State<RotacionInventarioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EOQ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 250,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    color: Pallete.assistantCircleColor,
                  ),
                ),
              ),
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Images/Main_background.png'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
