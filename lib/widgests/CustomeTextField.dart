import 'package:flutter/material.dart';

import 'Constant.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:  kPrimaryColor,
        decoration: InputDecoration(
          hintText: 'Title',
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