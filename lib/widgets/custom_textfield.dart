import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxline = 1,
    this.onSaved,
  });
  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Empety ';
        } else {
          return null;
        }
      },
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
