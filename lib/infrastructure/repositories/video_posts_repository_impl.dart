import 'package:tiktak/domain/datasources/video_posts_datasource.dart';
import 'package:tiktak/domain/entities/video_post.dart';
import 'package:tiktak/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videosDataSource;

  VideoPostsRepositoryImpl({
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