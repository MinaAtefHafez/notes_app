import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(appBarTitle: 'Notes' , appBarIcon: Icons.search , ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}



class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final data = const [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16 ),
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 10 ,
        itemBuilder: (context,index) =>   const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: NotesItem(),
        ),
        ),
    );
  }
}

