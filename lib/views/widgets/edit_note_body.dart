





import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [ 
            SizedBox(height: 40),
            CustomAppBar(appBarTitle: 'Edit Note' , appBarIcon: Icons.done , ) ,
            SizedBox(height: 50),
            CustomTextField(hint: 'title' , maxLines: 1 , ),
            SizedBox( height: 35 ),
            CustomTextField(hint: 'content' , maxLines: 5 , ),
         ],
      ),
    );
  }
}