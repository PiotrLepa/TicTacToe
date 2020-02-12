library post;

import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.freezed.dart';

part 'post.g.dart';

@JsonSerializable()
@immutable
abstract class Post with _$Post {
  const factory Post(int id, String title, String body) = _Post;

  static const fromJsonFactory = _$PostFromJson;
}
