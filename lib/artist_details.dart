import 'package:flutter/material.dart';
import 'package:skillbox_7_6/artist.dart';

class ArtistDetails extends StatefulWidget {
  Artist currentArtist;
  ArtistDetails({required this.currentArtist, Key? key}) : super(key: key);

  @override
  State<ArtistDetails> createState() => _ArtistDetailsState();
}

class _ArtistDetailsState extends State<ArtistDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.currentArtist.name),
        ),
        body: Text(widget.currentArtist.about),
      ),
    );
  }
}
