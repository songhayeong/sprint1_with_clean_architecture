import 'package:dio/dio.dart';

import '../../../domain/entities/post.dart';

abstract class PostRemoteDataSource {

  Future<List<Post>> getAllPosts();

  Future<Post> getPostById(String postId);

  Future<void> createPost(Post post);

  Future<void> updatePost(Post post);

  Future<void> deletePost(String postId);
}
