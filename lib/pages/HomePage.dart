import 'package:flutter/material.dart';
import 'package:flutter_drawermenu_demo/widgets/AppDrawer.dart';

class HomePage extends StatelessWidget {

  static const String routeName = '/homes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: AppDrawer(),
        body: Center(
            child: Text("Home")
        )
    );
  }
}