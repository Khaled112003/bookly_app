import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String value)? onFieldSubmitted;
  final void Function(String value)? onChanged;

  const SearchTextField({
    Key? key,
    required this.controller,
    this.onFieldSubmitted,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: SafeArea(
        child: TextFormField(
          controller: controller,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please enter the name of the book';
            }
            return null;
          },
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          decoration: const InputDecoration(
            suffixIcon: Icon(CupertinoIcons.search),
            label: Text("Search"),
            hintText: 'Enter book name',
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
