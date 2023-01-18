



import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( bottom: 16 , left: 16 , right: 16  ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:  [
          const SizedBox(height: 32,),
          const CustomTextField(hint: 'title' ),
          const SizedBox(height: 30,),
          const CustomTextField(hint: 'content' , maxLines: 5),
          const SizedBox(height: 25 ,) ,
          CustomMaterialButton( buttonName: 'Add' , onPressed: (){})
        ],
      ),
    );
  }
}