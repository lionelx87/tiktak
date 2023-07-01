import 'package:tiktak/domain/datasources/video_posts_datasource.dart';
import 'package:tiktak/domain/entities/video_post.dart';
import 'package:tiktak/domain/repositories/video_posts_repository.dart';

class VideoPostsRepository implements VideoPostRepository {
  final VideoPostDataSource videosDataSource;

  VideoPostsRepository({
    required this.videosDataSource
  });
  
  @override
  Future<List<VideoPost>> getFavotireVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }
  
}