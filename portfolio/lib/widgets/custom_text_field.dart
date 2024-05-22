import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, 
     this.controller, 
     this.maxLines = 1, 
     this.hinText
    });

  final TextEditingController? controller;
  final int maxLines;
  final String? hinText;

  @override
  Widget build(BuildContext context) {
    return TextField(
            controller: controller,
            maxLines: maxLines,
            style: const TextStyle(color: Color.fromRGBO(187, 187, 187, 1)), 
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(16),
              filled: true,
              fillColor: const Color.fromRGBO(12, 6, 81, 1),
              focusedBorder: getInputBorder,
              enabledBorder: getInputBorder,
              border: getInputBorder,
              hintText: hinText,
              hintStyle: const TextStyle(
                color:Color.fromRGBO(187, 187, 187, 1),

        ),
      ),
    );
  }

  OutlineInputBorder get getInputBorder{
  return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
    );
  }
}