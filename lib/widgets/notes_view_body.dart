import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/custom_note_item.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          Expanded(child: NotesViewList()),
        ],
      ),
    );
  }
}
