import 'package:json_annotation/json_annotation.dart';

part 'artist.g.dart';

@JsonSerializable()
class Artist {
  String name;
  String link;
  String about;

  Artist({
    required this.name,
    required this.link,
    required this.about,
  });

  factory Artist.fromJSON(Map<String, dynamic> json) => _$ArtistFromJson(json);
}
