import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimarycolor,
      decoration: InputDecoration(
        hintText: 'Title',
        border: bulidborder(),
        enabledBorder: bulidborder(),
        focusedBorder: bulidborder(kPrimarycolor),
      ),
    );
  }

  OutlineInputBorder bulidborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
