// domain/usecases/update_post_usecase.dart
import 'package:sprint1_with_clean_architecture/src/data/repositories/post_repository_impl.dart';
import '../entities/post.dart';

class UpdatePostUseCase {
  final PostRepositoryImpl postRepository;

  UpdatePostUseCase(this.postRepository);

  Future<void> updatePost(Post updatedPost) async {
    // 비즈니스 로직 수행
    await postRepository.updatePost(updatedPost);
  }
}
