import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20,),
      child: SafeArea(
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(CupertinoIcons.search),
            label: Text("search"),
        
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        )
          ),
        ),
      ),
    );
  }
}