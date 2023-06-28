import 'package:flutter/material.dart';

import 'Constant.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key, required this.hints, required this.maxLines});
  final String hints ;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:  kPrimaryColor,
        decoration: InputDecoration(
          hintText: hints,
          hintMaxLines: maxLines,
          hintStyle: const TextStyle(
            color: kPrimaryColor,
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor),
        )
    );
  }
}
OutlineInputBorder buildBorder([color]) {
  return  OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide:  BorderSide(
      color: color?? Colors.white,
      width: 2,
    ),
  );
}