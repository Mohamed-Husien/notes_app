import 'package:flutter/material.dart';
import 'package:note_app/views/widget/note_item.dart';

class NodesListView extends StatelessWidget {
  const NodesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: NoteItem(),
            );
          }),
    );
  }
}
