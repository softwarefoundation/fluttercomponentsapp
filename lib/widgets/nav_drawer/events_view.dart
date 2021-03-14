import 'package:flutter/material.dart';
import 'package:fluttercomponentsapp/widgets/nav_drawer/nav_drawer.dart';

class EventsView extends StatelessWidget {
  static const String routeName = '/events';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Events"),
        ),
        drawer: NavDrawer(),
        body: Center(child: Text("Events")));
  }
}