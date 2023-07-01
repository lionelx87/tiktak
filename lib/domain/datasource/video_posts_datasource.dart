import 'package:tiktak/domain/entities/video_post.dart';

abstract class VideoPostDataSource {

  Future<List<VideoPost>> getFavotireVideosByUser(String userID);

  Future<List<VideoPost>> getTrendingVideosByPage(int page);

}