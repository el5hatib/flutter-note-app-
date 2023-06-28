import 'package:flutter/material.dart';

import 'Constant.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key, required this.hints, required this.maxLines, this.OnSaved});
  final String hints ;
  final int maxLines;
  final Function(String?)? OnSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: OnSaved ,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'Please enter some text';
        }
        else {return null;}
      },
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