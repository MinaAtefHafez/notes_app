


import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.appBarTitle, required this.appBarIcon});
  
  final String appBarTitle ;
  final IconData appBarIcon ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [ 
          Text(appBarTitle , 
            style: const TextStyle( fontSize: 28),
          ),
          const Spacer(),
           CustomSearchIcon(icon: appBarIcon ,)
       ],
    );
  }
}