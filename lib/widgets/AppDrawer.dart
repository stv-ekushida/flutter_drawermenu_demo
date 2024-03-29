import 'package:flutter/material.dart';
import 'package:flutter_drawermenu_demo/routes/Routes.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(icon: Icons.home,
              text: 'Home',
              onTap: () => Navigator.pushReplacementNamed(context, Routes.homes)),
          _createDrawerItem(icon: Icons.contacts,
            text: 'Contacts',
          onTap: () => Navigator.pushReplacementNamed(context, Routes.contacts)),
          _createDrawerItem(icon: Icons.event,
              text: 'Events',
              onTap: () =>  Navigator.pushReplacementNamed(context, Routes.events)),
          _createDrawerItem(icon: Icons.note,
            text: 'Notes',
              onTap: () => Navigator.pushReplacementNamed(context, Routes.notes)),
          Divider(),
          ListTile(
            title: Text('v1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Flutter Drawer Menu",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}