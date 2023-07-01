import 'package:tiktak/domain/datasources/video_posts_datasource.dart';
import 'package:tiktak/domain/entities/video_post.dart';
import 'package:tiktak/infrastructure/models/local_video_model.dart';
import 'package:tiktak/shared/data/local_video_posts.dart';

class LocalVideoDataSource implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts.map( ( video ) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity() ).toList();
    return newVideos;
  }


}