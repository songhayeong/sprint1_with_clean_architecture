import 'package:sprint1_with_clean_architecture/src/data/repositories/post_repository_impl.dart';
import 'package:sprint1_with_clean_architecture/src/domain/entities/author.dart';

import '../entities/post.dart';

class CreatePostUseCase {
  final PostRepositoryImpl postRepository;

  CreatePostUseCase(this.postRepository);


  Future<Post> createPost(Author author, String title, String content) async {
    // 비즈니스 로직 수행
    final newPost = Post(
      id: 1, // autoincrasement
      title: title,
      content: content,
      author: author,
      createdAt: DateTime.now()
    );

    // 데이터 저장 등 추가 작업 수행
    await postRepository.createPost(newPost); // postRepo를 통해 실제 데이터 소스에 저장을 하는 역할

    return newPost;
  }
}