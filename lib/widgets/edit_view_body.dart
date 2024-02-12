import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit  Note',
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16),
          CustomTextField(
            hint: 'Content',
            maxline: 5,
          )
        ],
      ),
    );
  }
}
