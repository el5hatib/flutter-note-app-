import 'package:flutter/material.dart';

import 'CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [

      Text('Nota', style: TextStyle(fontSize: 28,),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
} // class CustomAppBar
 // class CustomSearchIcon