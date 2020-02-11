library post;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post.g.dart';

abstract class Post implements Built<Post, PostBuilder> {
  int get id;

  String get title;

  String get body;

  Post._();

  factory Post([updates(PostBuilder b)]) = _$Post;

  static Serializer<Post> get serializer => _$postSerializer;
}
