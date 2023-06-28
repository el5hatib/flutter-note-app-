import 'package:flutter/material.dart';

import 'Constant.dart';
import 'CustomeButton.dart';
import 'CustomeTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: AddNoteForm(),
        ),
      );
  }
}
class AddNoteForm extends StatefulWidget{
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _formKey = GlobalKey<FormState>();
   AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  String ? _title , _subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key:  _formKey,
      autovalidateMode: _autovalidateMode,
      child: Column(
        children:  [
          const SizedBox(
            height: 32,
          ),
          CustomeTextField(hints: 'Title', maxLines: 1,
          OnSaved: (value){
            _title = value;
          },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomeTextField(hints: 'Subtitle', maxLines: 20,
          OnSaved: (value){
            _subtitle = value;
          },
          ),
          const SizedBox(
            height: 100,
          ),
          CustomeButton(
            onTap: (){
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
              }
              else{
                setState(() {
                  _autovalidateMode = AutovalidateMode.always;
                  setState(() {

                  });
                });
              }
            },
          ),

        ],
      ),
    );

  }
}