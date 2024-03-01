import 'package:flutter/material.dart';
import 'package:t_code_x_app/constants/wilayas.dart';
import 'package:flutter/src/material/dropdown.dart';

class OptionSelector extends StatefulWidget {
  @override
  _OptionSelectorState createState() => _OptionSelectorState();
}

class _OptionSelectorState extends State<OptionSelector> {
  String selectedOption = 'Algiers';

  void _setSelectedOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Select your state',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 2),
        SizedBox(
          width: double.infinity,
          child: DropdownButton<String>(
            alignment: Alignment.center,
            borderRadius: BorderRadius.circular(30),
            value: selectedOption,
            onChanged: (newValue) {
              _setSelectedOption(newValue!);
            },
            dropdownColor: Colors.grey.shade300,
            items: algerianStates.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                alignment: Alignment.center,
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
