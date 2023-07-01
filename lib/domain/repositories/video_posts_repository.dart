import 'package:tiktak/domain/entities/video_post.dart';

abstract class VideoPostDataRepository {

  Future<List<VideoPost>> getFavotireVideosByUser(String userID);

  Future<List<VideoPost>> getTrendingVideosByPage(int page);

}