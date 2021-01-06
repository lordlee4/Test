// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'response_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

// ignore: unused_element
  _UserModel call(
      {@required int posts,
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
      int v}) {
    return _UserModel(
      posts: posts,
      followers: followers,
      followings: followings,
      id: id,
      account: account,
      username: username,
      name: name,
      profilePic: profilePic,
      bio: bio,
      created_at: created_at,
      updated_at: updated_at,
      v: v,
    );
  }

// ignore: unused_element
  UserModel fromJson(Map<String, Object> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  int get posts;
  int get followers;
  int get followings;
  String get id;
  String get account;
  String get username;
  String get name;
  String get profilePic;
  String get bio;
  String get created_at;
  String get updated_at;
  int get v;

  Map<String, dynamic> toJson();
  $UserModelCopyWith<UserModel> get copyWith;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {int posts,
      int followers,
      int followings,
      String id,
      String account,
      String username,
      String name,
      String profilePic,
      String bio,
      String created_at,
      String updated_at,
      int v});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object posts = freezed,
    Object followers = freezed,
    Object followings = freezed,
    Object id = freezed,
    Object account = freezed,
    Object username = freezed,
    Object name = freezed,
    Object profilePic = freezed,
    Object bio = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
    Object v = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed ? _value.posts : posts as int,
      followers: followers == freezed ? _value.followers : followers as int,
      followings: followings == freezed ? _value.followings : followings as int,
      id: id == freezed ? _value.id : id as String,
      account: account == freezed ? _value.account : account as String,
      username: username == freezed ? _value.username : username as String,
      name: name == freezed ? _value.name : name as String,
      profilePic:
          profilePic == freezed ? _value.profilePic : profilePic as String,
      bio: bio == freezed ? _value.bio : bio as String,
      created_at:
          created_at == freezed ? _value.created_at : created_at as String,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as String,
      v: v == freezed ? _value.v : v as int,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int posts,
      int followers,
      int followings,
      String id,
      String account,
      String username,
      String name,
      String profilePic,
      String bio,
      String created_at,
      String updated_at,
      int v});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object posts = freezed,
    Object followers = freezed,
    Object followings = freezed,
    Object id = freezed,
    Object account = freezed,
    Object username = freezed,
    Object name = freezed,
    Object profilePic = freezed,
    Object bio = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
    Object v = freezed,
  }) {
    return _then(_UserModel(
      posts: posts == freezed ? _value.posts : posts as int,
      followers: followers == freezed ? _value.followers : followers as int,
      followings: followings == freezed ? _value.followings : followings as int,
      id: id == freezed ? _value.id : id as String,
      account: account == freezed ? _value.account : account as String,
      username: username == freezed ? _value.username : username as String,
      name: name == freezed ? _value.name : name as String,
      profilePic:
          profilePic == freezed ? _value.profilePic : profilePic as String,
      bio: bio == freezed ? _value.bio : bio as String,
      created_at:
          created_at == freezed ? _value.created_at : created_at as String,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as String,
      v: v == freezed ? _value.v : v as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserModel extends _UserModel {
  const _$_UserModel(
      {@required this.posts,
      @required this.followers,
      @required this.followings,
      @required this.id,
      @required this.account,
      @required this.username,
      @required this.name,
      @required this.profilePic,
      @required this.bio,
      @required this.created_at,
      @required this.updated_at,
      this.v})
      : assert(posts != null),
        assert(followers != null),
        assert(followings != null),
        assert(id != null),
        assert(account != null),
        assert(username != null),
        assert(name != null),
        assert(profilePic != null),
        assert(bio != null),
        assert(created_at != null),
        assert(updated_at != null),
        super._();

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserModelFromJson(json);

  @override
  final int posts;
  @override
  final int followers;
  @override
  final int followings;
  @override
  final String id;
  @override
  final String account;
  @override
  final String username;
  @override
  final String name;
  @override
  final String profilePic;
  @override
  final String bio;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final int v;

  @override
  String toString() {
    return 'UserModel(posts: $posts, followers: $followers, followings: $followings, id: $id, account: $account, username: $username, name: $name, profilePic: $profilePic, bio: $bio, created_at: $created_at, updated_at: $updated_at, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.followings, followings) ||
                const DeepCollectionEquality()
                    .equals(other.followings, followings)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profilePic, profilePic) ||
                const DeepCollectionEquality()
                    .equals(other.profilePic, profilePic)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.v, v) ||
                const DeepCollectionEquality().equals(other.v, v)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(followings) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profilePic) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(v);

  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel extends UserModel {
  const _UserModel._() : super._();
  const factory _UserModel(
      {@required int posts,
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
      int v}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int get posts;
  @override
  int get followers;
  @override
  int get followings;
  @override
  String get id;
  @override
  String get account;
  @override
  String get username;
  @override
  String get name;
  @override
  String get profilePic;
  @override
  String get bio;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  int get v;
  @override
  _$UserModelCopyWith<_UserModel> get copyWith;
}

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
class _$PostModelTearOff {
  const _$PostModelTearOff();

// ignore: unused_element
  _PostModel call(
      {@required int likes,
      @required String id,
      @required String caption,
      @required String image,
      @required UserModel user,
      @required String created_at,
      @required String updated_at,
      int v,
      @required bool isLiked}) {
    return _PostModel(
      likes: likes,
      id: id,
      caption: caption,
      image: image,
      user: user,
      created_at: created_at,
      updated_at: updated_at,
      v: v,
      isLiked: isLiked,
    );
  }

// ignore: unused_element
  PostModel fromJson(Map<String, Object> json) {
    return PostModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PostModel = _$PostModelTearOff();

/// @nodoc
mixin _$PostModel {
  int get likes;
  String get id;
  String get caption;
  String get image;
  UserModel get user;
  String get created_at;
  String get updated_at;
  int get v;
  bool get isLiked;

  Map<String, dynamic> toJson();
  $PostModelCopyWith<PostModel> get copyWith;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res>;
  $Res call(
      {int likes,
      String id,
      String caption,
      String image,
      UserModel user,
      String created_at,
      String updated_at,
      int v,
      bool isLiked});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res> implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  final PostModel _value;
  // ignore: unused_field
  final $Res Function(PostModel) _then;

  @override
  $Res call({
    Object likes = freezed,
    Object id = freezed,
    Object caption = freezed,
    Object image = freezed,
    Object user = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
    Object v = freezed,
    Object isLiked = freezed,
  }) {
    return _then(_value.copyWith(
      likes: likes == freezed ? _value.likes : likes as int,
      id: id == freezed ? _value.id : id as String,
      caption: caption == freezed ? _value.caption : caption as String,
      image: image == freezed ? _value.image : image as String,
      user: user == freezed ? _value.user : user as UserModel,
      created_at:
          created_at == freezed ? _value.created_at : created_at as String,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as String,
      v: v == freezed ? _value.v : v as int,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(
          _PostModel value, $Res Function(_PostModel) then) =
      __$PostModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int likes,
      String id,
      String caption,
      String image,
      UserModel user,
      String created_at,
      String updated_at,
      int v,
      bool isLiked});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$PostModelCopyWithImpl<$Res> extends _$PostModelCopyWithImpl<$Res>
    implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(_PostModel _value, $Res Function(_PostModel) _then)
      : super(_value, (v) => _then(v as _PostModel));

  @override
  _PostModel get _value => super._value as _PostModel;

  @override
  $Res call({
    Object likes = freezed,
    Object id = freezed,
    Object caption = freezed,
    Object image = freezed,
    Object user = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
    Object v = freezed,
    Object isLiked = freezed,
  }) {
    return _then(_PostModel(
      likes: likes == freezed ? _value.likes : likes as int,
      id: id == freezed ? _value.id : id as String,
      caption: caption == freezed ? _value.caption : caption as String,
      image: image == freezed ? _value.image : image as String,
      user: user == freezed ? _value.user : user as UserModel,
      created_at:
          created_at == freezed ? _value.created_at : created_at as String,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as String,
      v: v == freezed ? _value.v : v as int,
      isLiked: isLiked == freezed ? _value.isLiked : isLiked as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PostModel implements _PostModel {
  const _$_PostModel(
      {@required this.likes,
      @required this.id,
      @required this.caption,
      @required this.image,
      @required this.user,
      @required this.created_at,
      @required this.updated_at,
      this.v,
      @required this.isLiked})
      : assert(likes != null),
        assert(id != null),
        assert(caption != null),
        assert(image != null),
        assert(user != null),
        assert(created_at != null),
        assert(updated_at != null),
        assert(isLiked != null);

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PostModelFromJson(json);

  @override
  final int likes;
  @override
  final String id;
  @override
  final String caption;
  @override
  final String image;
  @override
  final UserModel user;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final int v;
  @override
  final bool isLiked;

  @override
  String toString() {
    return 'PostModel(likes: $likes, id: $id, caption: $caption, image: $image, user: $user, created_at: $created_at, updated_at: $updated_at, v: $v, isLiked: $isLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostModel &&
            (identical(other.likes, likes) ||
                const DeepCollectionEquality().equals(other.likes, likes)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)) &&
            (identical(other.v, v) ||
                const DeepCollectionEquality().equals(other.v, v)) &&
            (identical(other.isLiked, isLiked) ||
                const DeepCollectionEquality().equals(other.isLiked, isLiked)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(likes) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(updated_at) ^
      const DeepCollectionEquality().hash(v) ^
      const DeepCollectionEquality().hash(isLiked);

  @override
  _$PostModelCopyWith<_PostModel> get copyWith =>
      __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostModelToJson(this);
  }
}

abstract class _PostModel implements PostModel {
  const factory _PostModel(
      {@required int likes,
      @required String id,
      @required String caption,
      @required String image,
      @required UserModel user,
      @required String created_at,
      @required String updated_at,
      int v,
      @required bool isLiked}) = _$_PostModel;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  int get likes;
  @override
  String get id;
  @override
  String get caption;
  @override
  String get image;
  @override
  UserModel get user;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  int get v;
  @override
  bool get isLiked;
  @override
  _$PostModelCopyWith<_PostModel> get copyWith;
}

FeedModel _$FeedModelFromJson(Map<String, dynamic> json) {
  return _FeedModel.fromJson(json);
}

/// @nodoc
class _$FeedModelTearOff {
  const _$FeedModelTearOff();

// ignore: unused_element
  _FeedModel call(
      {List<PostModel> docs, int total, int limit, String page, int pages}) {
    return _FeedModel(
      docs: docs,
      total: total,
      limit: limit,
      page: page,
      pages: pages,
    );
  }

// ignore: unused_element
  FeedModel fromJson(Map<String, Object> json) {
    return FeedModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FeedModel = _$FeedModelTearOff();

/// @nodoc
mixin _$FeedModel {
  List<PostModel> get docs;
  int get total;
  int get limit;
  String get page;
  int get pages;

  Map<String, dynamic> toJson();
  $FeedModelCopyWith<FeedModel> get copyWith;
}

/// @nodoc
abstract class $FeedModelCopyWith<$Res> {
  factory $FeedModelCopyWith(FeedModel value, $Res Function(FeedModel) then) =
      _$FeedModelCopyWithImpl<$Res>;
  $Res call(
      {List<PostModel> docs, int total, int limit, String page, int pages});
}

/// @nodoc
class _$FeedModelCopyWithImpl<$Res> implements $FeedModelCopyWith<$Res> {
  _$FeedModelCopyWithImpl(this._value, this._then);

  final FeedModel _value;
  // ignore: unused_field
  final $Res Function(FeedModel) _then;

  @override
  $Res call({
    Object docs = freezed,
    Object total = freezed,
    Object limit = freezed,
    Object page = freezed,
    Object pages = freezed,
  }) {
    return _then(_value.copyWith(
      docs: docs == freezed ? _value.docs : docs as List<PostModel>,
      total: total == freezed ? _value.total : total as int,
      limit: limit == freezed ? _value.limit : limit as int,
      page: page == freezed ? _value.page : page as String,
      pages: pages == freezed ? _value.pages : pages as int,
    ));
  }
}

/// @nodoc
abstract class _$FeedModelCopyWith<$Res> implements $FeedModelCopyWith<$Res> {
  factory _$FeedModelCopyWith(
          _FeedModel value, $Res Function(_FeedModel) then) =
      __$FeedModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PostModel> docs, int total, int limit, String page, int pages});
}

/// @nodoc
class __$FeedModelCopyWithImpl<$Res> extends _$FeedModelCopyWithImpl<$Res>
    implements _$FeedModelCopyWith<$Res> {
  __$FeedModelCopyWithImpl(_FeedModel _value, $Res Function(_FeedModel) _then)
      : super(_value, (v) => _then(v as _FeedModel));

  @override
  _FeedModel get _value => super._value as _FeedModel;

  @override
  $Res call({
    Object docs = freezed,
    Object total = freezed,
    Object limit = freezed,
    Object page = freezed,
    Object pages = freezed,
  }) {
    return _then(_FeedModel(
      docs: docs == freezed ? _value.docs : docs as List<PostModel>,
      total: total == freezed ? _value.total : total as int,
      limit: limit == freezed ? _value.limit : limit as int,
      page: page == freezed ? _value.page : page as String,
      pages: pages == freezed ? _value.pages : pages as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FeedModel implements _FeedModel {
  const _$_FeedModel(
      {this.docs, this.total, this.limit, this.page, this.pages});

  factory _$_FeedModel.fromJson(Map<String, dynamic> json) =>
      _$_$_FeedModelFromJson(json);

  @override
  final List<PostModel> docs;
  @override
  final int total;
  @override
  final int limit;
  @override
  final String page;
  @override
  final int pages;

  @override
  String toString() {
    return 'FeedModel(docs: $docs, total: $total, limit: $limit, page: $page, pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FeedModel &&
            (identical(other.docs, docs) ||
                const DeepCollectionEquality().equals(other.docs, docs)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(docs) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(limit) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pages);

  @override
  _$FeedModelCopyWith<_FeedModel> get copyWith =>
      __$FeedModelCopyWithImpl<_FeedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FeedModelToJson(this);
  }
}

abstract class _FeedModel implements FeedModel {
  const factory _FeedModel(
      {List<PostModel> docs,
      int total,
      int limit,
      String page,
      int pages}) = _$_FeedModel;

  factory _FeedModel.fromJson(Map<String, dynamic> json) =
      _$_FeedModel.fromJson;

  @override
  List<PostModel> get docs;
  @override
  int get total;
  @override
  int get limit;
  @override
  String get page;
  @override
  int get pages;
  @override
  _$FeedModelCopyWith<_FeedModel> get copyWith;
}
