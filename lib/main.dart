// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/views/notes_view.dart';
import 'models/note_model.dart';

void main() async {


  await Hive.initFlutter();
  await Hive.openBox(AppConstants.notesBox);
        Hive.registerAdapter(NoteModelAdapter());
  
  runApp( NotesApp());
}

class NotesApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false ,
         theme: ThemeData(brightness: Brightness.dark , fontFamily: 'Poppins' ),
         home: const NotesView(),
          
    );
  }
}
