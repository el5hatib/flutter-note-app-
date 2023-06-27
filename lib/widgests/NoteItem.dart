import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24 , bottom: 24 , left: 16 ),
      decoration: const BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.all(Radius.circular(16)),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:  const Text('Note Title', style: TextStyle(fontSize: 20 , color: Colors.black,), ),
            subtitle:   Padding(
              padding: const EdgeInsets.only(top: 16 , bottom: 16),
              child: Text('Note Subtitle', style: TextStyle(fontSize: 18,color: Colors.black.withOpacity(0.5),),),
            ),
            trailing:  IconButton(onPressed:() {} ,
                icon:
                const FaIcon(FontAwesomeIcons.trash, size: 24, color: Colors.black,)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text('May 24, 2023',
              style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.5),),
            ),
          ),
        ],
      ),
    );
  }
} // class NoteItem