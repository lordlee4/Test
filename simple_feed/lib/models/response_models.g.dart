// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    posts: json['posts'] as int,
    followers: json['followers'] as int,
    followings: json['followings'] as int,
    id: json['_id'] as String,
    account: json['account'] as String,
    username: json['username'] as String,
    name: json['name'] as String,
    profilePic: json['profilePic'] as String,
    bio: json['bio'] as String,
    created_at: json['created_at'] as String,
    updated_at: json['updated_at'] as String,
    v: json['__v'] as int,
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'followers': instance.followers,
      'followings': instance.followings,
      '_id': instance.id,
      'account': instance.account,
      'username': instance.username,
      'name': instance.name,
      'profilePic': instance.profilePic,
      'bio': instance.bio,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      '__v': instance.v,
    };

_$_PostModel _$_$_PostModelFromJson(Map<String, dynamic> json) {
  return _$_PostModel(
    likes: json['likes'] as int,
    id: json['_id'] as String,
    caption: json['caption'] as String,
    image: json['image'] as String,
    user: json['user'] == null
        ? null
        : UserModel.fromJson(json['user'] as Map<String, dynamic>),
    created_at: json['created_at'] as String,
    updated_at: json['updated_at'] as String,
    v: json['__v'] as int,
    isLiked: json['isLiked'] as bool,
  );
}

Map<String, dynamic> _$_$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'likes': instance.likes,
      '_id': instance.id,
      'caption': instance.caption,
      'image': instance.image,
      'user': instance.user,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      '__v': instance.v,
      'isLiked': instance.isLiked,
    };

_$_FeedModel _$_$_FeedModelFromJson(Map<String, dynamic> json) {
  return _$_FeedModel(
    docs: (json['docs'] as List)
        ?.map((e) =>
            e == null ? null : PostModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    total: json['total'] as int,
    limit: json['limit'] as int,
    page: json['page'] as String,
    pages: json['pages'] as int,
  );
}

Map<String, dynamic> _$_$_FeedModelToJson(_$_FeedModel instance) =>
    <String, dynamic>{
      'docs': instance.docs,
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'pages': instance.pages,
    };
