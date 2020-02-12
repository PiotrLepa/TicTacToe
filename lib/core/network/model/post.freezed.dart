// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of post;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

abstract class _$Post {
  int get id;

  String get title;

  String get body;

  Post copyWith({int id, String title, String body});

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_Post with DiagnosticableTreeMixin implements _Post {
  const _$_Post(this.id, this.title, this.body);

  factory _$_Post.fromJson(Map<String, dynamic> json) =>
      _$_$_PostFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return 'Post(id: $id, title: $title, body: $body)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Post'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('body', body));
  }

  @override
  bool operator ==(dynamic other) {
    return other is _Post &&
        (identical(other.id, id) || other.id == id) &&
        (identical(other.title, title) || other.title == title) &&
        (identical(other.body, body) || other.body == body);
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;

  @override
  _$_Post copyWith({
    Object id = immutable,
    Object title = immutable,
    Object body = immutable,
  }) {
    return _$_Post(
      id == immutable ? this.id : id as int,
      title == immutable ? this.title : title as String,
      body == immutable ? this.body : body as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostToJson(this);
  }
}

abstract class _Post implements Post {
  const factory _Post(int id, String title, String body) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  int get id;

  @override
  String get title;

  @override
  String get body;

  @override
  _Post copyWith({int id, String title, String body});
}
