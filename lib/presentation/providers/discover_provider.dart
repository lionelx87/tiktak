import 'package:flutter/material.dart';
import 'package:tiktak/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // TODO: cargar videos

    notifyListeners();

  }

}