import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:youtubebloc/api.dart';
import 'package:youtubebloc/models/video.dart';

class VideosBloc implements BlocBase {
  Api api;
  List<Video> videos;

  final StreamController _videosControlle = StreamController<List<Video>>();
  Stream get outVideos => _videosControlle.stream;

  final StreamController _searchController = StreamController<String>();
  Sink get inSearch => _searchController.sink;

  VideosBloc() {
    this.api = Api();

    _searchController.stream.listen(_search);

  }

  void _search(String search) async {
    videos = await api.search(search);
    _videosControlle.sink.add(videos);
  }

  @override
  void dispose() {
    _videosControlle.close();
    _searchController.close();
  }
}
