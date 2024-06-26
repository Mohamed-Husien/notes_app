import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_app_bar.dart';
import 'package:note_app/views/widget/nodes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            Expanded(child: NodesListView()),
          ],
        ),
      ),
    );
  }
}
