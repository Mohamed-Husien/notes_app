import 'package:flutter/material.dart';
import 'package:note_app/views/widget/add_note_bottom_sheet.dart';
import 'package:note_app/views/widget/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true, // to make bottom sheet auto scroll
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
