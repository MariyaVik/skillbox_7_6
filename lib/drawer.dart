import 'package:flutter/material.dart';
import 'package:skillbox_7_6/navigation.dart';

class MyDrawer extends StatefulWidget {
  int indexScreen;
  MyDrawer({required this.indexScreen, Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List drawerItem = [
    DrawerItem(
        text: Text('Home'), icon: Icon(Icons.home), moveTo: NavRouteName.home),
    DrawerItem(
        text: Text('Artists'),
        icon: Icon(Icons.audiotrack),
        moveTo: NavRouteName.artistsList),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView.builder(
      itemCount: drawerItem.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: drawerItem[index].icon,
          title: drawerItem[index].text,
          textColor: widget.indexScreen == index ? Colors.blue : Colors.black,
          iconColor: widget.indexScreen == index ? Colors.blue : Colors.grey,
          onTap: () {
            if (widget.indexScreen == index) {
              Navigator.of(context).pop();
            } else {
              Navigator.of(context)
                  .pushReplacementNamed(drawerItem[index].moveTo);
            }
          },
        );
      },
    ));
  }
}

class DrawerItem {
  Text text;
  Icon icon;
  String moveTo;
  DrawerItem({
    required this.text,
    required this.icon,
    required this.moveTo,
  });
}
