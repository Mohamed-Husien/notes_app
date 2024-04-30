import 'package:flutter/material.dart';
import 'package:note_app/views/widget/note_item.dart';

class NodesListView extends StatelessWidget {
  const NodesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: NoteItem(),
          );
        });
  }
}
