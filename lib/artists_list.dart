import 'package:flutter/material.dart';

class ArtistsList extends StatefulWidget {
  ArtistsList({Key? key}) : super(key: key);

  @override
  State<ArtistsList> createState() => _ArtistsListState();
}

class _ArtistsListState extends State<ArtistsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onTap: () {},
          ),
        ],
      )),
      body: Center(child: Text('Список артистов')),
    );
  }
}
