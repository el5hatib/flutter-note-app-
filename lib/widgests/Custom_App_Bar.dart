import 'package:flutter/material.dart';

import 'CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [

      Text('El-Nota', style: TextStyle(fontSize: 28,),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
} // class CustomAppBar
 // class CustomSearchIcon