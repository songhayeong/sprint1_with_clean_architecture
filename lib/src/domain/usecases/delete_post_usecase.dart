// domain/usecases/delete_post_usecase.dart
import 'package:sprint1_with_clean_architecture/src/data/repositories/post_repository_impl.dart';


class DeletePostUseCase {
  final PostRepositoryImpl postRepository;

  DeletePostUseCase(this.postRepository);

  Future<void> deletePost(String postId) async {
    // 비즈니스 로직 수행
    await postRepository.deletePost(postId);
  }
}