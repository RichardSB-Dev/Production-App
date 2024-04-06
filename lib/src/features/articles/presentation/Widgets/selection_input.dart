import 'package:flutter/material.dart';

class SelectInput extends StatefulWidget {
  const SelectInput({super.key});

  @override
  State<SelectInput> createState() => _SelectInputState();
}

class _SelectInputState extends State<SelectInput> {
  List<DropdownMenuItem<String>> items = [
    const DropdownMenuItem(
      value: "1",
      child: Text(
        'EOQ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    const DropdownMenuItem(
      value: "2",
      child: Text(
        'Rotacion de inventario',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];
  String selectedValue = '1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          DropdownButton<String>(
            itemHeight: 65,
            value: selectedValue,
            items: items,
            onChanged: (value) => setState(() => selectedValue = value!),
          ),
        ],
      ),
    );
  }
}
