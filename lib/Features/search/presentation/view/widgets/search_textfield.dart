import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, this.onFieldSubmitted});
  final void Function(String value)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.symmetric(horizontal: 0,),
      child: SafeArea(
        child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter the name of the book ';
            }
            return null;
          },
          
          onFieldSubmitted: onFieldSubmitted,
          decoration: const InputDecoration(
            suffixIcon: Icon(CupertinoIcons.search),
            label: Text("seach"),
            hintText: 'enter book name',

        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        )
          ),
        ),
      ),
    );
  }
}