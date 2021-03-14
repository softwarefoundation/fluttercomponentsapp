import 'package:flutter/material.dart';
import 'package:fluttercomponentsapp/routes/routes.dart';

class NavDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Flutter Widgets',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('images/space.png'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Events'),
            onTap: () {
              Navigator.pushNamed(context, Routes.events);
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Notes'),
            onTap: () {
              Navigator.pushNamed(context, Routes.notes);
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Máscaras & Validações'),
            onTap: () {
              Navigator.pushNamed(context, Routes.mascara_validacao);
            },
          ),
        ],
      ),
    );
  }

}
