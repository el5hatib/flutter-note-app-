import 'package:flutter/material.dart';

import 'Constant.dart';
import 'CustomeButton.dart';
import 'CustomeTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children:  [
              SizedBox(
                height: 32,
              ),
              CustomeTextField(hints: 'Title', maxLines: 1,),
              SizedBox(
                height: 16,
              ),
              CustomeTextField(hints: 'Content', maxLines: 20,),
              SizedBox(
                height: 100,
              ),
              CustomeButton(),

            ],
          ),
        ),
      );
  }
}
