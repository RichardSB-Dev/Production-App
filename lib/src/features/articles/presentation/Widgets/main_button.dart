import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          FormHelper.submitButton(
            'Ir',
            () {},
            btnColor: Theme.of(context).primaryColorLight,
            borderColor: Theme.of(context).primaryColorLight,
            txtColor: Colors.black,
            fontSize: 28,
          ),
        ],
      ),
    );
  }
}
