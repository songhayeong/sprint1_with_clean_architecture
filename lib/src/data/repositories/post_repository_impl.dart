// data/repositories/post_repository_impl.dart
import 'package:dio/src/dio.dart';

import '../../domain/entities/post.dart';
import '../datasources/remote/post_reomte_data_source.dart';

class PostRepositoryImpl implements PostRemoteDataSource {

  final Dio dio = Dio();

  final String apiUrl = 'https://example.com/api/posts';

  final PostRemoteDataSource remoteDataSource;

  PostRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Post>> getAllPosts() {
    return remoteDataSource.getAllPosts();
  }

  @override
  Future<Post> getPostById(String postId) {
    return remoteDataSource.getPostById(postId);
  }


  // 데이터 레이어에서 동작하는 메서드, 외부 데이터 소스 (원격서버)와 상호작용을 통해 새로운 게시물을 생성한다.
  @override
  Future<void> createPost(Post post) {
    return remoteDataSource.createPost(post);
  }

  @override
  Future<void> updatePost(Post post) {
    return remoteDataSource.updatePost(post);
  }

  @override
  Future<void> deletePost(String postId) {
    return remoteDataSource.deletePost(postId);
  }

}
