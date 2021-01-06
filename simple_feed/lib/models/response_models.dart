import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_models.freezed.dart';
part 'response_models.g.dart';

@JsonSerializable(nullable: false)
@freezed
abstract class UserModel implements _$UserModel {
  const UserModel._();
  const factory UserModel({
    @required int posts,
    @required int followers,
    @required int followings,
    @required String id,
    @required String account,
    @required String username,
    @required String name,
    @required String profilePic,
    @required String bio,
    @required String created_at,
    @required String updated_at,
    int v,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@JsonSerializable(nullable: false)
@freezed
abstract class PostModel implements _$PostModel {
  const factory PostModel({
    @required int likes,
    @required String id,
    @required String caption,
    @required String image,
    @required UserModel user,
    @required String created_at,
    @required String updated_at,
    int v,
    @required bool isLiked,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

@JsonSerializable(nullable: false)
@freezed
abstract class FeedModel implements _$FeedModel {
  const factory FeedModel({
    List<PostModel> docs,
    int total,
    int limit,
    String page,
    int pages,
  }) = _FeedModel;

  factory FeedModel.fromJson(Map<String, dynamic> json) =>
      _$FeedModelFromJson(json);
}
