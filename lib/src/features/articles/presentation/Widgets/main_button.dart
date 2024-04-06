import 'package:flutter/material.dart';
import 'package:production_app/src/features/articles/presentation/Pages/eoq_screen.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const EOQScreen(),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Text(
                'Loading...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
