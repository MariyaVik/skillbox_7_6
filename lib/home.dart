import 'package:flutter/material.dart';
import 'package:skillbox_7_6/drawer.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    print('Home init');
  }

  @override
  void dispose() {
    print('Home dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        drawer: MyDrawer(indexScreen: 0),
      ),
    );
  }
}
