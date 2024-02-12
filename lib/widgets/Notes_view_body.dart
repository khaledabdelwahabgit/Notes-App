import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_list_view.dart';
import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
            icon: Icons.search,
            title: 'Notes',
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}
