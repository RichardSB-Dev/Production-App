import 'package:flutter/material.dart';
import 'package:production_app/src/core/styles/pallete.dart';
import 'package:production_app/src/features/articles/presentation/Widgets/input_text.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class EOQScreen extends StatefulWidget {
  const EOQScreen({super.key});

  @override
  State<EOQScreen> createState() => _EOQScreenState();
}

class _EOQScreenState extends State<EOQScreen> {
  final TextEditingController _dEditingController = TextEditingController();
  final TextEditingController _sEditingController = TextEditingController();
  final TextEditingController _hEditingController = TextEditingController();
  bool _isLoading = false;

  int calculate(int d, int s, double h) {
    setState(() {
      _isLoading = true;
    });

    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EOQ',
          style: TextStyle(
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
            height: 50,
          ),
          InputText(
            hintText: 'Enter value of D',
            textEditingController: _dEditingController,
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 12,
          ),
          InputText(
            hintText: 'Enter value of S',
            textEditingController: _sEditingController,
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 12,
          ),
          InputText(
            hintText: 'Enter value of H',
            textEditingController: _hEditingController,
            textInputType: TextInputType.text,
          ),
          const SizedBox(
            height: 12,
          ),
          FormHelper.submitButton(
            'Cacular',
            calculate(_dEditingController.text, _sEditingController.text,
                _hEditingController.text),
          ),
        ],
      ),
    );
  }
}
