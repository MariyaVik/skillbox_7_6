import 'package:flutter/material.dart';
import 'package:skillbox_7_6/navigation.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
            child: Column(
          children: [
            ListTile(
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Artists"),
              onTap: () {
                Navigator.of(context).pushNamed(NavRouteName.artistsList);
              },
            ),
          ],
        )),
      ),
    );
  }
}
