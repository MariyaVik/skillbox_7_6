import 'package:flutter/material.dart';
import 'package:skillbox_7_6/artist_details.dart';
import 'package:skillbox_7_6/artists_list.dart';
import 'package:skillbox_7_6/home.dart';

abstract class NavRouteName {
  static const home = '/home';
  static const artistsList = '/artists';
  static const artistDetails = '/artists/details';
}

class Navigation {
  static const initialRoute = NavRouteName.home;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavRouteName.home:
        return MaterialPageRoute(builder: (context) => Home());
      case NavRouteName.artistsList:
        return MaterialPageRoute(builder: (context) => ArtistsList());
      case NavRouteName.artistDetails:
        return MaterialPageRoute(builder: (context) => ArtistDetails());
      default:
        return MaterialPageRoute(
            builder: (context) => const Text('Navigation error!!!'));
    }
  }
}
