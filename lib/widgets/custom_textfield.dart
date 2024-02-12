import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxline = 1,
  });
  final String hint;
  final int maxline;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline,
      cursorColor: kPrimarycolor,
      decoration: InputDecoration(
        hintText: hint,
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
