


import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
               onPressed: (){
               showModalBottomSheet(
                context: context, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
                ), 
               builder: (context) {
                return const AddNoteBottomSheet();
               } );
        } , child: const Icon(Icons.add), ),
         body:  const NotesViewBody() ,
      ),
    );
  }
}



