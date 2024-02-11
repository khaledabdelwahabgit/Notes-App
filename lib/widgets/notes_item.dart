import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.amber[200]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'This is a short note about Flutter tips',
                style: TextStyle(color: Colors.black.withOpacity(.5)),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.trash),
              color: Colors.black,
              iconSize: 26,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 24,
            ),
            child: Text(
              '2 februry 2024',
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
