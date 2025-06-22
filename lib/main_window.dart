import 'package:crafty/data/models/project.dart';
import 'package:flutter/material.dart';

class ListViewCustomTest extends StatelessWidget {
  const ListViewCustomTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Craft Projects')),

      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate((
          BuildContext context,
          int index,
        ) {
          return ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  craftIcons[dummy_projects[index].craft]!,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            title: Text(dummy_projects[index].title),
          );
        }, childCount: dummy_projects.length),
      ),
    );
  }
}
