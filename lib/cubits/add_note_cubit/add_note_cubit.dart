



import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<AddNoteStates>{
  NotesCubit() : super(InitialState());
  

  addNote (NoteModel noteModel) async {
    emit(AddNoteLoadingState());

   try {
  var notesBox = Hive.box<NoteModel>(AppConstants.notesBox);
   await notesBox.add(noteModel);
   emit(AddNoteSuccessState());
} catch (e) {
   emit(AddNoteFailureState(errMessage: e.toString()));
}
  
  }  
  
  
}