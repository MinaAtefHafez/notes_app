
import 'package:flutter/material.dart';
import '../edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const EditNoteView() ) );
      } ,
      child: Container(
        padding: const EdgeInsets.only(top: 28 , bottom: 28 , left: 16  ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffFFCC80)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only( top: 16  ),
                child: Text('build your career with mina atef',
                    style: TextStyle(
                        fontSize: 18 , color: Colors.black.withOpacity(0.5))),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 33,
                  )),
              iconColor: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only( right: 20 ,  top: 15  ),
              child: Text('May 21 , 2022',
                  style: TextStyle(color: Colors.black.withOpacity(0.5) ,  fontSize: 16  )),
            ),
          ],
        ),
      ),
    );
  }
}
