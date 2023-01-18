


import 'package:flutter/material.dart';
import 'package:note_app/constants/constants.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({super.key, required this.onPressed, required this.buttonName});

  final Function () onPressed ;
  final String buttonName ;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed ,
      color: AppConstants.primaryColor,
      minWidth: double.infinity,
      height: 55 ,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(8) 
      ),
      child:  Text(buttonName , style: const TextStyle(color:Colors.black , fontWeight: FontWeight.w800 ,fontSize: 17),),
    );
  }
}