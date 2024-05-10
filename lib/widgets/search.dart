
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySearchField extends StatefulWidget {
  const MySearchField({super.key});

  @override
  State<MySearchField> createState() => _MySearchFieldState();
}

class _MySearchFieldState extends State<MySearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff37324b),
          contentPadding: const EdgeInsets.all(16),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
          prefixIcon: const Padding(
            padding: EdgeInsets.all(16),
            child: Icon(CupertinoIcons.search),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
