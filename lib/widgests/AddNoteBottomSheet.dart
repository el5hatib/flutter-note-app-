import 'package:flutter/material.dart';

import 'CustomeTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomeTextField(),
        ],
      ),
    );
  }
}