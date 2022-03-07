import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skillbox_7_6/artist.dart';
import 'package:skillbox_7_6/drawer.dart';
import 'package:skillbox_7_6/navigation.dart';

class ArtistsList extends StatefulWidget {
  ArtistsList({Key? key}) : super(key: key);

  @override
  State<ArtistsList> createState() => _ArtistsListState();
}

class _ArtistsListState extends State<ArtistsList> {
  int _currentSelected = 1;
  List artists = [];
  List drawerItem = ['Home', 'Artists'];

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
    print('Artists init');
    setState(() {});
  }

  void dispose() {
    print('Artists dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('List of artists'),
        ),
        drawer: MyDrawer(indexScreen: 1),
        body: ListView(children: [
          for (var artist in artists)
            ListTile(
              title: Text(artist.name),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(NavRouteName.artistDetails, arguments: artist);
              },
            )
        ]),
      ),
    );
  }
}
