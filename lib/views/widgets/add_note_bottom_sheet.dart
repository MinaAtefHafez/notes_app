



import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only( bottom: 16 , left: 16 , right: 16  ),
        child: AddNoteForm(),
      ),
    );
  }

  


  
}


class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled ;

  String? title , subTitle ;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode ,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
            const SizedBox(height: 32,),
             CustomTextField(hint: 'title' , 
                   maxLines: 1 ,
                   onSaved: (value) {
                      title = value ;
                   } ,
             ),
            const SizedBox(height: 30,),
             CustomTextField(hint: 'content' , maxLines: 5 , 
               onSaved: (value) {
                subTitle = value ; 
               } ,
            ),
            const SizedBox(height: 25 ,) ,
            CustomMaterialButton( buttonName: 'Add' , onPressed: (){
              if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
              } else {
                 autovalidateMode = AutovalidateMode.always ;
                 setState(() {});
              }
            })
          ],
        ),
    );
  }
}



 