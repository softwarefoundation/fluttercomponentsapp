import 'package:flutter/material.dart';
import 'package:fluttercomponentsapp/routes/route_generator.dart';
import 'package:fluttercomponentsapp/widgets/nav_drawer/nav_drawer.dart';

void main() => runApp(FlutterComponentsApp());

class FlutterComponentsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Components',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.genetateRoute,
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Flutter Widgets'),
      ),
      body: Center(
        child: Text('Flutter Widgets'),
      ),
    );
  }
}