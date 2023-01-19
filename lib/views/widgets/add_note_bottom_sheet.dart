



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
           create: (context) => AddNoteCubit() ,
           child: BlocConsumer<AddNoteCubit,AddNoteStates>(
             listener: (context, state) {
                 if ( state is AddNoteFailureState ) {
                   print('failure : ${state.errMessage}');
                 }

                 if ( state is AddNoteSuccessState ) {
                   Navigator.pop(context);
                 }
             },
             builder: (context,state) => const Padding(
             padding: EdgeInsets.only( bottom: 16 , left: 16 , right: 16  ),
             child: SingleChildScrollView(child: AddNoteForm()),
           ),
           ),
     );
  }

  


  
}








 