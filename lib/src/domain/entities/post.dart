import 'author.dart';

class Post {
  final int id;
  final String title;
  final String content;
  final DateTime createdAt;
  final Author author;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    required this.author
  });

  // factory Post.fromJson(Map<String, dynamic> json) {
  //   return Post(
  //     id: json['id'] as String,
  //     title: json['title'] as String,
  //     content: json['content'] as String,
  //   );
  // }
  //
  // // Post 객체를 JSON 데이터로 변환하는 메서드 (옵션)
  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'title': title,
  //     'content': content,
  //   };
  // }

}