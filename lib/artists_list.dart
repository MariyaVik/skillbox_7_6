import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skillbox_7_6/artist.dart';
import 'package:skillbox_7_6/navigation.dart';

class ArtistsList extends StatefulWidget {
  ArtistsList({Key? key}) : super(key: key);

  @override
  State<ArtistsList> createState() => _ArtistsListState();
}

class _ArtistsListState extends State<ArtistsList> {
  List artists = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/artists.json');
    final data = await jsonDecode(response);
    artists = data.map((e) => Artist.fromJSON(e)).toList();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    readJson();
    setState(() {});
  }

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
              onTap: () {
                Navigator.of(context).pushNamed(NavRouteName.home);
              },
            ),
            ListTile(
              title: Text("Artists"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        )),
        body: ListView(children: [
          for (var artist in artists)
            ListTile(
              title: Text(artist.name),
              onTap: () {},
            )
        ]),
      ),
    );
  }
}
