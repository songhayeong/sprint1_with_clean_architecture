// domain/usecases/read_post_usecase.dart
import 'package:sprint1_with_clean_architecture/src/data/repositories/post_repository_impl.dart';
import '../entities/post.dart';

class ReadPostUseCase {
  final PostRepositoryImpl postRepository;

  ReadPostUseCase(this.postRepository);

  Future<List<Post>> getAllPosts() async {
    // 비즈니스 로직 수행
    return postRepository.getAllPosts();
  }

  Future<Post> getPostById(String postId) async {
    // 비즈니스 로직 수행
    return postRepository.getPostById(postId);
  }
}