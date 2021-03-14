import 'package:flutter/material.dart';
import 'package:fluttercomponentsapp/widgets/nav_drawer/nav_drawer.dart';

class NotesView extends StatelessWidget {

  static const String routeName = '/notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Notes"),
        ),
        drawer: NavDrawer(),
        body: Center(
            child: Text("Notes")
        )
    );
  }
}