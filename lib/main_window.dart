import 'package:crafty/data/models/project.dart';
import 'package:flutter/material.dart';

class ListViewCustomTest extends StatelessWidget {
  const ListViewCustomTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView.custom Test')),

      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((
          BuildContext context,
          int index,
        ) {
          return ListTile(
            leading: CircleAvatar(child: Text(index.toString())),
            title: Text(dummy_projects[index].title),
            subtitle: Text(dummy_projects[index].craft.toString()),
          );
        }, childCount: dummy_projects.length),
      ),
    );
  }
}
