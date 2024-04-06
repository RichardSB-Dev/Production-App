import 'package:flutter/material.dart';
import 'package:production_app/src/core/styles/pallete.dart';
import 'package:production_app/src/features/articles/presentation/Widgets/main_button.dart';
import 'package:production_app/src/features/articles/presentation/Widgets/selection_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        title: const Text(
          'Production App',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
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
                          image:
                              AssetImage('assets/Images/Main_background.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 80,
              width: double.infinity,
            ),
            const SelectInput(),
            const SizedBox(
              height: 24,
            ),
            const MainButton(),
          ],
        ),
      ),
    );
  }
}
