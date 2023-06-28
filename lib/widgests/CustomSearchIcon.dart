import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       height:  40,
        width:  40,
        decoration:   BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child:  const Center(child: Icon(Icons.search,size: 25,), ),

    );
  }
}