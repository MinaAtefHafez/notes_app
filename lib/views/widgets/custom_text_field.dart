

import 'package:flutter/material.dart';
import 'package:note_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines = 1 });

  final String hint ;
  final int maxLines  ;

  @override
  Widget build(BuildContext context) {
    return  TextField(
        cursorColor: AppConstants.primaryColor ,
        onSubmitted: (value){
            
        } ,
        maxLines: maxLines ,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: AppConstants.primaryColor),
          enabledBorder: buildBorder() ,
          focusedBorder: buildBorder(AppConstants.primaryColor)  ,
        ),
    );
  }

  


  OutlineInputBorder buildBorder([Color? color]) {
    return  OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)) ,
          borderSide: BorderSide(color: color ?? Colors.white), 
        );
  }
}

