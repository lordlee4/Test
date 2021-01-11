// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CoreEventTearOff {
  const _$CoreEventTearOff();

// ignore: unused_element
  InitialEvent initialEvent() {
    return const InitialEvent();
  }

// ignore: unused_element
  CreatePost createPost({String caption, File image}) {
    return CreatePost(
      caption: caption,
      image: image,
    );
  }

// ignore: unused_element
  GetCurrentUser getCurrentUser() {
    return const GetCurrentUser();
  }

// ignore: unused_element
  GetFeed getFeed({int page}) {
    return GetFeed(
      page: page,
    );
  }

// ignore: unused_element
  GetPostById getPostById({String id}) {
    return GetPostById(
      id: id,
    );
  }

// ignore: unused_element
  GetUserById getUserById({String id}) {
    return GetUserById(
      id: id,
    );
  }

// ignore: unused_element
  LikePost likePost({String id}) {
    return LikePost(
      id: id,
    );
  }

// ignore: unused_element
  Logout logout() {
    return const Logout();
  }

// ignore: unused_element
  UnlikePost unlikePost({String id}) {
    return UnlikePost(
      id: id,
    );
  }

// ignore: unused_element
  RefreshFeed refreshFeed() {
    return const RefreshFeed();
  }
}

/// @nodoc
// ignore: unused_element
const $CoreEvent = _$CoreEventTearOff();

/// @nodoc
mixin _$CoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CoreEventCopyWith<$Res> {
  factory $CoreEventCopyWith(CoreEvent value, $Res Function(CoreEvent) then) =
      _$CoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreEventCopyWithImpl<$Res> implements $CoreEventCopyWith<$Res> {
  _$CoreEventCopyWithImpl(this._value, this._then);

  final CoreEvent _value;
  // ignore: unused_field
  final $Res Function(CoreEvent) _then;
}

/// @nodoc
abstract class $InitialEventCopyWith<$Res> {
  factory $InitialEventCopyWith(
          InitialEvent value, $Res Function(InitialEvent) then) =
      _$InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialEventCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements $InitialEventCopyWith<$Res> {
  _$InitialEventCopyWithImpl(
      InitialEvent _value, $Res Function(InitialEvent) _then)
      : super(_value, (v) => _then(v as InitialEvent));

  @override
  InitialEvent get _value => super._value as InitialEvent;
}

/// @nodoc
class _$InitialEvent implements InitialEvent {
  const _$InitialEvent();

  @override
  String toString() {
    return 'CoreEvent.initialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialEvent != null) {
      return initialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class InitialEvent implements CoreEvent {
  const factory InitialEvent() = _$InitialEvent;
}

/// @nodoc
abstract class $CreatePostCopyWith<$Res> {
  factory $CreatePostCopyWith(
          CreatePost value, $Res Function(CreatePost) then) =
      _$CreatePostCopyWithImpl<$Res>;
  $Res call({String caption, File image});
}

/// @nodoc
class _$CreatePostCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements $CreatePostCopyWith<$Res> {
  _$CreatePostCopyWithImpl(CreatePost _value, $Res Function(CreatePost) _then)
      : super(_value, (v) => _then(v as CreatePost));

  @override
  CreatePost get _value => super._value as CreatePost;

  @override
  $Res call({
    Object caption = freezed,
    Object image = freezed,
  }) {
    return _then(CreatePost(
      caption: caption == freezed ? _value.caption : caption as String,
      image: image == freezed ? _value.image : image as File,
    ));
  }
}

/// @nodoc
class _$CreatePost implements CreatePost {
  const _$CreatePost({this.caption, this.image});

  @override
  final String caption;
  @override
  final File image;

  @override
  String toString() {
    return 'CoreEvent.createPost(caption: $caption, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatePost &&
            (identical(other.caption, caption) ||
                const DeepCollectionEquality()
                    .equals(other.caption, caption)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(caption) ^
      const DeepCollectionEquality().hash(image);

  @override
  $CreatePostCopyWith<CreatePost> get copyWith =>
      _$CreatePostCopyWithImpl<CreatePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return createPost(caption, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createPost != null) {
      return createPost(caption, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return createPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createPost != null) {
      return createPost(this);
    }
    return orElse();
  }
}

abstract class CreatePost implements CoreEvent {
  const factory CreatePost({String caption, File image}) = _$CreatePost;

  String get caption;
  File get image;
  $CreatePostCopyWith<CreatePost> get copyWith;
}

/// @nodoc
abstract class $GetCurrentUserCopyWith<$Res> {
  factory $GetCurrentUserCopyWith(
          GetCurrentUser value, $Res Function(GetCurrentUser) then) =
      _$GetCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCurrentUserCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements $GetCurrentUserCopyWith<$Res> {
  _$GetCurrentUserCopyWithImpl(
      GetCurrentUser _value, $Res Function(GetCurrentUser) _then)
      : super(_value, (v) => _then(v as GetCurrentUser));

  @override
  GetCurrentUser get _value => super._value as GetCurrentUser;
}

/// @nodoc
class _$GetCurrentUser implements GetCurrentUser {
  const _$GetCurrentUser();

  @override
  String toString() {
    return 'CoreEvent.getCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetCurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return getCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentUser != null) {
      return getCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return getCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getCurrentUser != null) {
      return getCurrentUser(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUser implements CoreEvent {
  const factory GetCurrentUser() = _$GetCurrentUser;
}

/// @nodoc
abstract class $GetFeedCopyWith<$Res> {
  factory $GetFeedCopyWith(GetFeed value, $Res Function(GetFeed) then) =
      _$GetFeedCopyWithImpl<$Res>;
  $Res call({int page});
}

/// @nodoc
class _$GetFeedCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements $GetFeedCopyWith<$Res> {
  _$GetFeedCopyWithImpl(GetFeed _value, $Res Function(GetFeed) _then)
      : super(_value, (v) => _then(v as GetFeed));

  @override
  GetFeed get _value => super._value as GetFeed;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(GetFeed(
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

/// @nodoc
class _$GetFeed implements GetFeed {
  const _$GetFeed({this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'CoreEvent.getFeed(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetFeed &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  $GetFeedCopyWith<GetFeed> get copyWith =>
      _$GetFeedCopyWithImpl<GetFeed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return getFeed(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getFeed != null) {
      return getFeed(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return getFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getFeed != null) {
      return getFeed(this);
    }
    return orElse();
  }
}

abstract class GetFeed implements CoreEvent {
  const factory GetFeed({int page}) = _$GetFeed;

  int get page;
  $GetFeedCopyWith<GetFeed> get copyWith;
}

/// @nodoc
abstract class $GetPostByIdCopyWith<$Res> {
  factory $GetPostByIdCopyWith(
          GetPostById value, $Res Function(GetPostById) then) =
      _$GetPostByIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$GetPostByIdCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements $GetPostByIdCopyWith<$Res> {
  _$GetPostByIdCopyWithImpl(
      GetPostById _value, $Res Function(GetPostById) _then)
      : super(_value, (v) => _then(v as GetPostById));

  @override
  GetPostById get _value => super._value as GetPostById;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetPostById(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$GetPostById implements GetPostById {
  const _$GetPostById({this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CoreEvent.getPostById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetPostById &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetPostByIdCopyWith<GetPostById> get copyWith =>
      _$GetPostByIdCopyWithImpl<GetPostById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return getPostById(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPostById != null) {
      return getPostById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return getPostById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPostById != null) {
      return getPostById(this);
    }
    return orElse();
  }
}

abstract class GetPostById implements CoreEvent {
  const factory GetPostById({String id}) = _$GetPostById;

  String get id;
  $GetPostByIdCopyWith<GetPostById> get copyWith;
}

/// @nodoc
abstract class $GetUserByIdCopyWith<$Res> {
  factory $GetUserByIdCopyWith(
          GetUserById value, $Res Function(GetUserById) then) =
      _$GetUserByIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$GetUserByIdCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements $GetUserByIdCopyWith<$Res> {
  _$GetUserByIdCopyWithImpl(
      GetUserById _value, $Res Function(GetUserById) _then)
      : super(_value, (v) => _then(v as GetUserById));

  @override
  GetUserById get _value => super._value as GetUserById;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetUserById(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$GetUserById implements GetUserById {
  const _$GetUserById({this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CoreEvent.getUserById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetUserById &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetUserByIdCopyWith<GetUserById> get copyWith =>
      _$GetUserByIdCopyWithImpl<GetUserById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return getUserById(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserById != null) {
      return getUserById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return getUserById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserById != null) {
      return getUserById(this);
    }
    return orElse();
  }
}

abstract class GetUserById implements CoreEvent {
  const factory GetUserById({String id}) = _$GetUserById;

  String get id;
  $GetUserByIdCopyWith<GetUserById> get copyWith;
}

/// @nodoc
abstract class $LikePostCopyWith<$Res> {
  factory $LikePostCopyWith(LikePost value, $Res Function(LikePost) then) =
      _$LikePostCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$LikePostCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements $LikePostCopyWith<$Res> {
  _$LikePostCopyWithImpl(LikePost _value, $Res Function(LikePost) _then)
      : super(_value, (v) => _then(v as LikePost));

  @override
  LikePost get _value => super._value as LikePost;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(LikePost(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$LikePost implements LikePost {
  const _$LikePost({this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CoreEvent.likePost(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LikePost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $LikePostCopyWith<LikePost> get copyWith =>
      _$LikePostCopyWithImpl<LikePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return likePost(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likePost != null) {
      return likePost(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likePost != null) {
      return likePost(this);
    }
    return orElse();
  }
}

abstract class LikePost implements CoreEvent {
  const factory LikePost({String id}) = _$LikePost;

  String get id;
  $LikePostCopyWith<LikePost> get copyWith;
}

/// @nodoc
abstract class $LogoutCopyWith<$Res> {
  factory $LogoutCopyWith(Logout value, $Res Function(Logout) then) =
      _$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements $LogoutCopyWith<$Res> {
  _$LogoutCopyWithImpl(Logout _value, $Res Function(Logout) _then)
      : super(_value, (v) => _then(v as Logout));

  @override
  Logout get _value => super._value as Logout;
}

/// @nodoc
class _$Logout implements Logout {
  const _$Logout();

  @override
  String toString() {
    return 'CoreEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements CoreEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
abstract class $UnlikePostCopyWith<$Res> {
  factory $UnlikePostCopyWith(
          UnlikePost value, $Res Function(UnlikePost) then) =
      _$UnlikePostCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$UnlikePostCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements $UnlikePostCopyWith<$Res> {
  _$UnlikePostCopyWithImpl(UnlikePost _value, $Res Function(UnlikePost) _then)
      : super(_value, (v) => _then(v as UnlikePost));

  @override
  UnlikePost get _value => super._value as UnlikePost;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(UnlikePost(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$UnlikePost implements UnlikePost {
  const _$UnlikePost({this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CoreEvent.unlikePost(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnlikePost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $UnlikePostCopyWith<UnlikePost> get copyWith =>
      _$UnlikePostCopyWithImpl<UnlikePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return unlikePost(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unlikePost != null) {
      return unlikePost(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return unlikePost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unlikePost != null) {
      return unlikePost(this);
    }
    return orElse();
  }
}

abstract class UnlikePost implements CoreEvent {
  const factory UnlikePost({String id}) = _$UnlikePost;

  String get id;
  $UnlikePostCopyWith<UnlikePost> get copyWith;
}

/// @nodoc
abstract class $RefreshFeedCopyWith<$Res> {
  factory $RefreshFeedCopyWith(
          RefreshFeed value, $Res Function(RefreshFeed) then) =
      _$RefreshFeedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshFeedCopyWithImpl<$Res> extends _$CoreEventCopyWithImpl<$Res>
    implements $RefreshFeedCopyWith<$Res> {
  _$RefreshFeedCopyWithImpl(
      RefreshFeed _value, $Res Function(RefreshFeed) _then)
      : super(_value, (v) => _then(v as RefreshFeed));

  @override
  RefreshFeed get _value => super._value as RefreshFeed;
}

/// @nodoc
class _$RefreshFeed implements RefreshFeed {
  const _$RefreshFeed();

  @override
  String toString() {
    return 'CoreEvent.refreshFeed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RefreshFeed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialEvent(),
    @required TResult createPost(String caption, File image),
    @required TResult getCurrentUser(),
    @required TResult getFeed(int page),
    @required TResult getPostById(String id),
    @required TResult getUserById(String id),
    @required TResult likePost(String id),
    @required TResult logout(),
    @required TResult unlikePost(String id),
    @required TResult refreshFeed(),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return refreshFeed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialEvent(),
    TResult createPost(String caption, File image),
    TResult getCurrentUser(),
    TResult getFeed(int page),
    TResult getPostById(String id),
    TResult getUserById(String id),
    TResult likePost(String id),
    TResult logout(),
    TResult unlikePost(String id),
    TResult refreshFeed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshFeed != null) {
      return refreshFeed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialEvent(InitialEvent value),
    @required TResult createPost(CreatePost value),
    @required TResult getCurrentUser(GetCurrentUser value),
    @required TResult getFeed(GetFeed value),
    @required TResult getPostById(GetPostById value),
    @required TResult getUserById(GetUserById value),
    @required TResult likePost(LikePost value),
    @required TResult logout(Logout value),
    @required TResult unlikePost(UnlikePost value),
    @required TResult refreshFeed(RefreshFeed value),
  }) {
    assert(initialEvent != null);
    assert(createPost != null);
    assert(getCurrentUser != null);
    assert(getFeed != null);
    assert(getPostById != null);
    assert(getUserById != null);
    assert(likePost != null);
    assert(logout != null);
    assert(unlikePost != null);
    assert(refreshFeed != null);
    return refreshFeed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialEvent(InitialEvent value),
    TResult createPost(CreatePost value),
    TResult getCurrentUser(GetCurrentUser value),
    TResult getFeed(GetFeed value),
    TResult getPostById(GetPostById value),
    TResult getUserById(GetUserById value),
    TResult likePost(LikePost value),
    TResult logout(Logout value),
    TResult unlikePost(UnlikePost value),
    TResult refreshFeed(RefreshFeed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (refreshFeed != null) {
      return refreshFeed(this);
    }
    return orElse();
  }
}

abstract class RefreshFeed implements CoreEvent {
  const factory RefreshFeed() = _$RefreshFeed;
}

/// @nodoc
class _$CoreStateTearOff {
  const _$CoreStateTearOff();

// ignore: unused_element
  InitialState initialState() {
    return const InitialState();
  }

// ignore: unused_element
  CreatedPost createdPost(
      {Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess}) {
    return CreatedPost(
      createdPostFailureOrSuccess: createdPostFailureOrSuccess,
    );
  }

// ignore: unused_element
  CurrentUser currentUser(
      {Either<RemoteApiFailures, UserModel> userFailureOrSuccess}) {
    return CurrentUser(
      userFailureOrSuccess: userFailureOrSuccess,
    );
  }

// ignore: unused_element
  Feed feed({Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess}) {
    return Feed(
      feedFailureOrSuccess: feedFailureOrSuccess,
    );
  }

// ignore: unused_element
  PostById postById(
      {Either<RemoteApiFailures, PostModel> postFailureOrSuccess}) {
    return PostById(
      postFailureOrSuccess: postFailureOrSuccess,
    );
  }

// ignore: unused_element
  UserById userById(
      {Either<RemoteApiFailures, UserModel> userFailureOrSuccess}) {
    return UserById(
      userFailureOrSuccess: userFailureOrSuccess,
    );
  }

// ignore: unused_element
  LikedPost likedPost(
      {Either<RemoteApiFailures, String> likeFailureOrSuccess}) {
    return LikedPost(
      likeFailureOrSuccess: likeFailureOrSuccess,
    );
  }

// ignore: unused_element
  LoggedOut loggedOut(
      {Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess}) {
    return LoggedOut(
      loggedOutFailureOrSuccess: loggedOutFailureOrSuccess,
    );
  }

// ignore: unused_element
  UnlikedPost unLikedPost(
      {Either<RemoteApiFailures, String> unLikeFailureOrSuccess}) {
    return UnlikedPost(
      unLikeFailureOrSuccess: unLikeFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CoreState = _$CoreStateTearOff();

/// @nodoc
mixin _$CoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialState(),
    @required
        TResult createdPost(
            Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    @required
        TResult currentUser(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    @required
        TResult postById(
            Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    @required
        TResult userById(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult likedPost(
            Either<RemoteApiFailures, String> likeFailureOrSuccess),
    @required
        TResult loggedOut(
            Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    @required
        TResult unLikedPost(
            Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialState(),
    TResult createdPost(
        Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    TResult currentUser(
        Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    TResult postById(Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    TResult userById(Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult likedPost(Either<RemoteApiFailures, String> likeFailureOrSuccess),
    TResult loggedOut(
        Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    TResult unLikedPost(
        Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialState(InitialState value),
    @required TResult createdPost(CreatedPost value),
    @required TResult currentUser(CurrentUser value),
    @required TResult feed(Feed value),
    @required TResult postById(PostById value),
    @required TResult userById(UserById value),
    @required TResult likedPost(LikedPost value),
    @required TResult loggedOut(LoggedOut value),
    @required TResult unLikedPost(UnlikedPost value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialState(InitialState value),
    TResult createdPost(CreatedPost value),
    TResult currentUser(CurrentUser value),
    TResult feed(Feed value),
    TResult postById(PostById value),
    TResult userById(UserById value),
    TResult likedPost(LikedPost value),
    TResult loggedOut(LoggedOut value),
    TResult unLikedPost(UnlikedPost value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CoreStateCopyWith<$Res> {
  factory $CoreStateCopyWith(CoreState value, $Res Function(CoreState) then) =
      _$CoreStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CoreStateCopyWithImpl<$Res> implements $CoreStateCopyWith<$Res> {
  _$CoreStateCopyWithImpl(this._value, this._then);

  final CoreState _value;
  // ignore: unused_field
  final $Res Function(CoreState) _then;
}

/// @nodoc
abstract class $InitialStateCopyWith<$Res> {
  factory $InitialStateCopyWith(
          InitialState value, $Res Function(InitialState) then) =
      _$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialStateCopyWithImpl<$Res> extends _$CoreStateCopyWithImpl<$Res>
    implements $InitialStateCopyWith<$Res> {
  _$InitialStateCopyWithImpl(
      InitialState _value, $Res Function(InitialState) _then)
      : super(_value, (v) => _then(v as InitialState));

  @override
  InitialState get _value => super._value as InitialState;
}

/// @nodoc
class _$InitialState implements InitialState {
  const _$InitialState();

  @override
  String toString() {
    return 'CoreState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialState(),
    @required
        TResult createdPost(
            Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    @required
        TResult currentUser(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    @required
        TResult postById(
            Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    @required
        TResult userById(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult likedPost(
            Either<RemoteApiFailures, String> likeFailureOrSuccess),
    @required
        TResult loggedOut(
            Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    @required
        TResult unLikedPost(
            Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialState(),
    TResult createdPost(
        Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    TResult currentUser(
        Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    TResult postById(Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    TResult userById(Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult likedPost(Either<RemoteApiFailures, String> likeFailureOrSuccess),
    TResult loggedOut(
        Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    TResult unLikedPost(
        Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialState(InitialState value),
    @required TResult createdPost(CreatedPost value),
    @required TResult currentUser(CurrentUser value),
    @required TResult feed(Feed value),
    @required TResult postById(PostById value),
    @required TResult userById(UserById value),
    @required TResult likedPost(LikedPost value),
    @required TResult loggedOut(LoggedOut value),
    @required TResult unLikedPost(UnlikedPost value),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialState(InitialState value),
    TResult createdPost(CreatedPost value),
    TResult currentUser(CurrentUser value),
    TResult feed(Feed value),
    TResult postById(PostById value),
    TResult userById(UserById value),
    TResult likedPost(LikedPost value),
    TResult loggedOut(LoggedOut value),
    TResult unLikedPost(UnlikedPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class InitialState implements CoreState {
  const factory InitialState() = _$InitialState;
}

/// @nodoc
abstract class $CreatedPostCopyWith<$Res> {
  factory $CreatedPostCopyWith(
          CreatedPost value, $Res Function(CreatedPost) then) =
      _$CreatedPostCopyWithImpl<$Res>;
  $Res call({Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess});
}

/// @nodoc
class _$CreatedPostCopyWithImpl<$Res> extends _$CoreStateCopyWithImpl<$Res>
    implements $CreatedPostCopyWith<$Res> {
  _$CreatedPostCopyWithImpl(
      CreatedPost _value, $Res Function(CreatedPost) _then)
      : super(_value, (v) => _then(v as CreatedPost));

  @override
  CreatedPost get _value => super._value as CreatedPost;

  @override
  $Res call({
    Object createdPostFailureOrSuccess = freezed,
  }) {
    return _then(CreatedPost(
      createdPostFailureOrSuccess: createdPostFailureOrSuccess == freezed
          ? _value.createdPostFailureOrSuccess
          : createdPostFailureOrSuccess as Either<RemoteApiFailures, PostModel>,
    ));
  }
}

/// @nodoc
class _$CreatedPost implements CreatedPost {
  const _$CreatedPost({this.createdPostFailureOrSuccess});

  @override
  final Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess;

  @override
  String toString() {
    return 'CoreState.createdPost(createdPostFailureOrSuccess: $createdPostFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreatedPost &&
            (identical(other.createdPostFailureOrSuccess,
                    createdPostFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.createdPostFailureOrSuccess,
                    createdPostFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(createdPostFailureOrSuccess);

  @override
  $CreatedPostCopyWith<CreatedPost> get copyWith =>
      _$CreatedPostCopyWithImpl<CreatedPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialState(),
    @required
        TResult createdPost(
            Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    @required
        TResult currentUser(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    @required
        TResult postById(
            Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    @required
        TResult userById(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult likedPost(
            Either<RemoteApiFailures, String> likeFailureOrSuccess),
    @required
        TResult loggedOut(
            Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    @required
        TResult unLikedPost(
            Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return createdPost(createdPostFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialState(),
    TResult createdPost(
        Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    TResult currentUser(
        Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    TResult postById(Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    TResult userById(Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult likedPost(Either<RemoteApiFailures, String> likeFailureOrSuccess),
    TResult loggedOut(
        Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    TResult unLikedPost(
        Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createdPost != null) {
      return createdPost(createdPostFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialState(InitialState value),
    @required TResult createdPost(CreatedPost value),
    @required TResult currentUser(CurrentUser value),
    @required TResult feed(Feed value),
    @required TResult postById(PostById value),
    @required TResult userById(UserById value),
    @required TResult likedPost(LikedPost value),
    @required TResult loggedOut(LoggedOut value),
    @required TResult unLikedPost(UnlikedPost value),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return createdPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialState(InitialState value),
    TResult createdPost(CreatedPost value),
    TResult currentUser(CurrentUser value),
    TResult feed(Feed value),
    TResult postById(PostById value),
    TResult userById(UserById value),
    TResult likedPost(LikedPost value),
    TResult loggedOut(LoggedOut value),
    TResult unLikedPost(UnlikedPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (createdPost != null) {
      return createdPost(this);
    }
    return orElse();
  }
}

abstract class CreatedPost implements CoreState {
  const factory CreatedPost(
          {Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess}) =
      _$CreatedPost;

  Either<RemoteApiFailures, PostModel> get createdPostFailureOrSuccess;
  $CreatedPostCopyWith<CreatedPost> get copyWith;
}

/// @nodoc
abstract class $CurrentUserCopyWith<$Res> {
  factory $CurrentUserCopyWith(
          CurrentUser value, $Res Function(CurrentUser) then) =
      _$CurrentUserCopyWithImpl<$Res>;
  $Res call({Either<RemoteApiFailures, UserModel> userFailureOrSuccess});
}

/// @nodoc
class _$CurrentUserCopyWithImpl<$Res> extends _$CoreStateCopyWithImpl<$Res>
    implements $CurrentUserCopyWith<$Res> {
  _$CurrentUserCopyWithImpl(
      CurrentUser _value, $Res Function(CurrentUser) _then)
      : super(_value, (v) => _then(v as CurrentUser));

  @override
  CurrentUser get _value => super._value as CurrentUser;

  @override
  $Res call({
    Object userFailureOrSuccess = freezed,
  }) {
    return _then(CurrentUser(
      userFailureOrSuccess: userFailureOrSuccess == freezed
          ? _value.userFailureOrSuccess
          : userFailureOrSuccess as Either<RemoteApiFailures, UserModel>,
    ));
  }
}

/// @nodoc
class _$CurrentUser implements CurrentUser {
  const _$CurrentUser({this.userFailureOrSuccess});

  @override
  final Either<RemoteApiFailures, UserModel> userFailureOrSuccess;

  @override
  String toString() {
    return 'CoreState.currentUser(userFailureOrSuccess: $userFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CurrentUser &&
            (identical(other.userFailureOrSuccess, userFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.userFailureOrSuccess, userFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userFailureOrSuccess);

  @override
  $CurrentUserCopyWith<CurrentUser> get copyWith =>
      _$CurrentUserCopyWithImpl<CurrentUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialState(),
    @required
        TResult createdPost(
            Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    @required
        TResult currentUser(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    @required
        TResult postById(
            Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    @required
        TResult userById(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult likedPost(
            Either<RemoteApiFailures, String> likeFailureOrSuccess),
    @required
        TResult loggedOut(
            Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    @required
        TResult unLikedPost(
            Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return currentUser(userFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialState(),
    TResult createdPost(
        Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    TResult currentUser(
        Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    TResult postById(Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    TResult userById(Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult likedPost(Either<RemoteApiFailures, String> likeFailureOrSuccess),
    TResult loggedOut(
        Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    TResult unLikedPost(
        Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (currentUser != null) {
      return currentUser(userFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialState(InitialState value),
    @required TResult createdPost(CreatedPost value),
    @required TResult currentUser(CurrentUser value),
    @required TResult feed(Feed value),
    @required TResult postById(PostById value),
    @required TResult userById(UserById value),
    @required TResult likedPost(LikedPost value),
    @required TResult loggedOut(LoggedOut value),
    @required TResult unLikedPost(UnlikedPost value),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return currentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialState(InitialState value),
    TResult createdPost(CreatedPost value),
    TResult currentUser(CurrentUser value),
    TResult feed(Feed value),
    TResult postById(PostById value),
    TResult userById(UserById value),
    TResult likedPost(LikedPost value),
    TResult loggedOut(LoggedOut value),
    TResult unLikedPost(UnlikedPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (currentUser != null) {
      return currentUser(this);
    }
    return orElse();
  }
}

abstract class CurrentUser implements CoreState {
  const factory CurrentUser(
          {Either<RemoteApiFailures, UserModel> userFailureOrSuccess}) =
      _$CurrentUser;

  Either<RemoteApiFailures, UserModel> get userFailureOrSuccess;
  $CurrentUserCopyWith<CurrentUser> get copyWith;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res>;
  $Res call({Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess});
}

/// @nodoc
class _$FeedCopyWithImpl<$Res> extends _$CoreStateCopyWithImpl<$Res>
    implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(Feed _value, $Res Function(Feed) _then)
      : super(_value, (v) => _then(v as Feed));

  @override
  Feed get _value => super._value as Feed;

  @override
  $Res call({
    Object feedFailureOrSuccess = freezed,
  }) {
    return _then(Feed(
      feedFailureOrSuccess: feedFailureOrSuccess == freezed
          ? _value.feedFailureOrSuccess
          : feedFailureOrSuccess as Either<RemoteApiFailures, FeedModel>,
    ));
  }
}

/// @nodoc
class _$Feed implements Feed {
  const _$Feed({this.feedFailureOrSuccess});

  @override
  final Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess;

  @override
  String toString() {
    return 'CoreState.feed(feedFailureOrSuccess: $feedFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Feed &&
            (identical(other.feedFailureOrSuccess, feedFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.feedFailureOrSuccess, feedFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(feedFailureOrSuccess);

  @override
  $FeedCopyWith<Feed> get copyWith =>
      _$FeedCopyWithImpl<Feed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialState(),
    @required
        TResult createdPost(
            Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    @required
        TResult currentUser(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    @required
        TResult postById(
            Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    @required
        TResult userById(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult likedPost(
            Either<RemoteApiFailures, String> likeFailureOrSuccess),
    @required
        TResult loggedOut(
            Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    @required
        TResult unLikedPost(
            Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return feed(feedFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialState(),
    TResult createdPost(
        Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    TResult currentUser(
        Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    TResult postById(Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    TResult userById(Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult likedPost(Either<RemoteApiFailures, String> likeFailureOrSuccess),
    TResult loggedOut(
        Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    TResult unLikedPost(
        Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feed != null) {
      return feed(feedFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialState(InitialState value),
    @required TResult createdPost(CreatedPost value),
    @required TResult currentUser(CurrentUser value),
    @required TResult feed(Feed value),
    @required TResult postById(PostById value),
    @required TResult userById(UserById value),
    @required TResult likedPost(LikedPost value),
    @required TResult loggedOut(LoggedOut value),
    @required TResult unLikedPost(UnlikedPost value),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return feed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialState(InitialState value),
    TResult createdPost(CreatedPost value),
    TResult currentUser(CurrentUser value),
    TResult feed(Feed value),
    TResult postById(PostById value),
    TResult userById(UserById value),
    TResult likedPost(LikedPost value),
    TResult loggedOut(LoggedOut value),
    TResult unLikedPost(UnlikedPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (feed != null) {
      return feed(this);
    }
    return orElse();
  }
}

abstract class Feed implements CoreState {
  const factory Feed(
      {Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess}) = _$Feed;

  Either<RemoteApiFailures, FeedModel> get feedFailureOrSuccess;
  $FeedCopyWith<Feed> get copyWith;
}

/// @nodoc
abstract class $PostByIdCopyWith<$Res> {
  factory $PostByIdCopyWith(PostById value, $Res Function(PostById) then) =
      _$PostByIdCopyWithImpl<$Res>;
  $Res call({Either<RemoteApiFailures, PostModel> postFailureOrSuccess});
}

/// @nodoc
class _$PostByIdCopyWithImpl<$Res> extends _$CoreStateCopyWithImpl<$Res>
    implements $PostByIdCopyWith<$Res> {
  _$PostByIdCopyWithImpl(PostById _value, $Res Function(PostById) _then)
      : super(_value, (v) => _then(v as PostById));

  @override
  PostById get _value => super._value as PostById;

  @override
  $Res call({
    Object postFailureOrSuccess = freezed,
  }) {
    return _then(PostById(
      postFailureOrSuccess: postFailureOrSuccess == freezed
          ? _value.postFailureOrSuccess
          : postFailureOrSuccess as Either<RemoteApiFailures, PostModel>,
    ));
  }
}

/// @nodoc
class _$PostById implements PostById {
  const _$PostById({this.postFailureOrSuccess});

  @override
  final Either<RemoteApiFailures, PostModel> postFailureOrSuccess;

  @override
  String toString() {
    return 'CoreState.postById(postFailureOrSuccess: $postFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostById &&
            (identical(other.postFailureOrSuccess, postFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.postFailureOrSuccess, postFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postFailureOrSuccess);

  @override
  $PostByIdCopyWith<PostById> get copyWith =>
      _$PostByIdCopyWithImpl<PostById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialState(),
    @required
        TResult createdPost(
            Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    @required
        TResult currentUser(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    @required
        TResult postById(
            Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    @required
        TResult userById(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult likedPost(
            Either<RemoteApiFailures, String> likeFailureOrSuccess),
    @required
        TResult loggedOut(
            Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    @required
        TResult unLikedPost(
            Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return postById(postFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialState(),
    TResult createdPost(
        Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    TResult currentUser(
        Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    TResult postById(Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    TResult userById(Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult likedPost(Either<RemoteApiFailures, String> likeFailureOrSuccess),
    TResult loggedOut(
        Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    TResult unLikedPost(
        Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postById != null) {
      return postById(postFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialState(InitialState value),
    @required TResult createdPost(CreatedPost value),
    @required TResult currentUser(CurrentUser value),
    @required TResult feed(Feed value),
    @required TResult postById(PostById value),
    @required TResult userById(UserById value),
    @required TResult likedPost(LikedPost value),
    @required TResult loggedOut(LoggedOut value),
    @required TResult unLikedPost(UnlikedPost value),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return postById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialState(InitialState value),
    TResult createdPost(CreatedPost value),
    TResult currentUser(CurrentUser value),
    TResult feed(Feed value),
    TResult postById(PostById value),
    TResult userById(UserById value),
    TResult likedPost(LikedPost value),
    TResult loggedOut(LoggedOut value),
    TResult unLikedPost(UnlikedPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postById != null) {
      return postById(this);
    }
    return orElse();
  }
}

abstract class PostById implements CoreState {
  const factory PostById(
      {Either<RemoteApiFailures, PostModel> postFailureOrSuccess}) = _$PostById;

  Either<RemoteApiFailures, PostModel> get postFailureOrSuccess;
  $PostByIdCopyWith<PostById> get copyWith;
}

/// @nodoc
abstract class $UserByIdCopyWith<$Res> {
  factory $UserByIdCopyWith(UserById value, $Res Function(UserById) then) =
      _$UserByIdCopyWithImpl<$Res>;
  $Res call({Either<RemoteApiFailures, UserModel> userFailureOrSuccess});
}

/// @nodoc
class _$UserByIdCopyWithImpl<$Res> extends _$CoreStateCopyWithImpl<$Res>
    implements $UserByIdCopyWith<$Res> {
  _$UserByIdCopyWithImpl(UserById _value, $Res Function(UserById) _then)
      : super(_value, (v) => _then(v as UserById));

  @override
  UserById get _value => super._value as UserById;

  @override
  $Res call({
    Object userFailureOrSuccess = freezed,
  }) {
    return _then(UserById(
      userFailureOrSuccess: userFailureOrSuccess == freezed
          ? _value.userFailureOrSuccess
          : userFailureOrSuccess as Either<RemoteApiFailures, UserModel>,
    ));
  }
}

/// @nodoc
class _$UserById implements UserById {
  const _$UserById({this.userFailureOrSuccess});

  @override
  final Either<RemoteApiFailures, UserModel> userFailureOrSuccess;

  @override
  String toString() {
    return 'CoreState.userById(userFailureOrSuccess: $userFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserById &&
            (identical(other.userFailureOrSuccess, userFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.userFailureOrSuccess, userFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userFailureOrSuccess);

  @override
  $UserByIdCopyWith<UserById> get copyWith =>
      _$UserByIdCopyWithImpl<UserById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialState(),
    @required
        TResult createdPost(
            Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    @required
        TResult currentUser(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    @required
        TResult postById(
            Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    @required
        TResult userById(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult likedPost(
            Either<RemoteApiFailures, String> likeFailureOrSuccess),
    @required
        TResult loggedOut(
            Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    @required
        TResult unLikedPost(
            Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return userById(userFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialState(),
    TResult createdPost(
        Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    TResult currentUser(
        Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    TResult postById(Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    TResult userById(Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult likedPost(Either<RemoteApiFailures, String> likeFailureOrSuccess),
    TResult loggedOut(
        Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    TResult unLikedPost(
        Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userById != null) {
      return userById(userFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialState(InitialState value),
    @required TResult createdPost(CreatedPost value),
    @required TResult currentUser(CurrentUser value),
    @required TResult feed(Feed value),
    @required TResult postById(PostById value),
    @required TResult userById(UserById value),
    @required TResult likedPost(LikedPost value),
    @required TResult loggedOut(LoggedOut value),
    @required TResult unLikedPost(UnlikedPost value),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return userById(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialState(InitialState value),
    TResult createdPost(CreatedPost value),
    TResult currentUser(CurrentUser value),
    TResult feed(Feed value),
    TResult postById(PostById value),
    TResult userById(UserById value),
    TResult likedPost(LikedPost value),
    TResult loggedOut(LoggedOut value),
    TResult unLikedPost(UnlikedPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userById != null) {
      return userById(this);
    }
    return orElse();
  }
}

abstract class UserById implements CoreState {
  const factory UserById(
      {Either<RemoteApiFailures, UserModel> userFailureOrSuccess}) = _$UserById;

  Either<RemoteApiFailures, UserModel> get userFailureOrSuccess;
  $UserByIdCopyWith<UserById> get copyWith;
}

/// @nodoc
abstract class $LikedPostCopyWith<$Res> {
  factory $LikedPostCopyWith(LikedPost value, $Res Function(LikedPost) then) =
      _$LikedPostCopyWithImpl<$Res>;
  $Res call({Either<RemoteApiFailures, String> likeFailureOrSuccess});
}

/// @nodoc
class _$LikedPostCopyWithImpl<$Res> extends _$CoreStateCopyWithImpl<$Res>
    implements $LikedPostCopyWith<$Res> {
  _$LikedPostCopyWithImpl(LikedPost _value, $Res Function(LikedPost) _then)
      : super(_value, (v) => _then(v as LikedPost));

  @override
  LikedPost get _value => super._value as LikedPost;

  @override
  $Res call({
    Object likeFailureOrSuccess = freezed,
  }) {
    return _then(LikedPost(
      likeFailureOrSuccess: likeFailureOrSuccess == freezed
          ? _value.likeFailureOrSuccess
          : likeFailureOrSuccess as Either<RemoteApiFailures, String>,
    ));
  }
}

/// @nodoc
class _$LikedPost implements LikedPost {
  const _$LikedPost({this.likeFailureOrSuccess});

  @override
  final Either<RemoteApiFailures, String> likeFailureOrSuccess;

  @override
  String toString() {
    return 'CoreState.likedPost(likeFailureOrSuccess: $likeFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LikedPost &&
            (identical(other.likeFailureOrSuccess, likeFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.likeFailureOrSuccess, likeFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(likeFailureOrSuccess);

  @override
  $LikedPostCopyWith<LikedPost> get copyWith =>
      _$LikedPostCopyWithImpl<LikedPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialState(),
    @required
        TResult createdPost(
            Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    @required
        TResult currentUser(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    @required
        TResult postById(
            Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    @required
        TResult userById(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult likedPost(
            Either<RemoteApiFailures, String> likeFailureOrSuccess),
    @required
        TResult loggedOut(
            Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    @required
        TResult unLikedPost(
            Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return likedPost(likeFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialState(),
    TResult createdPost(
        Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    TResult currentUser(
        Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    TResult postById(Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    TResult userById(Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult likedPost(Either<RemoteApiFailures, String> likeFailureOrSuccess),
    TResult loggedOut(
        Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    TResult unLikedPost(
        Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likedPost != null) {
      return likedPost(likeFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialState(InitialState value),
    @required TResult createdPost(CreatedPost value),
    @required TResult currentUser(CurrentUser value),
    @required TResult feed(Feed value),
    @required TResult postById(PostById value),
    @required TResult userById(UserById value),
    @required TResult likedPost(LikedPost value),
    @required TResult loggedOut(LoggedOut value),
    @required TResult unLikedPost(UnlikedPost value),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return likedPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialState(InitialState value),
    TResult createdPost(CreatedPost value),
    TResult currentUser(CurrentUser value),
    TResult feed(Feed value),
    TResult postById(PostById value),
    TResult userById(UserById value),
    TResult likedPost(LikedPost value),
    TResult loggedOut(LoggedOut value),
    TResult unLikedPost(UnlikedPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (likedPost != null) {
      return likedPost(this);
    }
    return orElse();
  }
}

abstract class LikedPost implements CoreState {
  const factory LikedPost(
      {Either<RemoteApiFailures, String> likeFailureOrSuccess}) = _$LikedPost;

  Either<RemoteApiFailures, String> get likeFailureOrSuccess;
  $LikedPostCopyWith<LikedPost> get copyWith;
}

/// @nodoc
abstract class $LoggedOutCopyWith<$Res> {
  factory $LoggedOutCopyWith(LoggedOut value, $Res Function(LoggedOut) then) =
      _$LoggedOutCopyWithImpl<$Res>;
  $Res call({Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess});
}

/// @nodoc
class _$LoggedOutCopyWithImpl<$Res> extends _$CoreStateCopyWithImpl<$Res>
    implements $LoggedOutCopyWith<$Res> {
  _$LoggedOutCopyWithImpl(LoggedOut _value, $Res Function(LoggedOut) _then)
      : super(_value, (v) => _then(v as LoggedOut));

  @override
  LoggedOut get _value => super._value as LoggedOut;

  @override
  $Res call({
    Object loggedOutFailureOrSuccess = freezed,
  }) {
    return _then(LoggedOut(
      loggedOutFailureOrSuccess: loggedOutFailureOrSuccess == freezed
          ? _value.loggedOutFailureOrSuccess
          : loggedOutFailureOrSuccess as Either<RemoteApiFailures, Unit>,
    ));
  }
}

/// @nodoc
class _$LoggedOut implements LoggedOut {
  const _$LoggedOut({this.loggedOutFailureOrSuccess});

  @override
  final Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess;

  @override
  String toString() {
    return 'CoreState.loggedOut(loggedOutFailureOrSuccess: $loggedOutFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoggedOut &&
            (identical(other.loggedOutFailureOrSuccess,
                    loggedOutFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.loggedOutFailureOrSuccess,
                    loggedOutFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loggedOutFailureOrSuccess);

  @override
  $LoggedOutCopyWith<LoggedOut> get copyWith =>
      _$LoggedOutCopyWithImpl<LoggedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialState(),
    @required
        TResult createdPost(
            Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    @required
        TResult currentUser(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    @required
        TResult postById(
            Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    @required
        TResult userById(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult likedPost(
            Either<RemoteApiFailures, String> likeFailureOrSuccess),
    @required
        TResult loggedOut(
            Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    @required
        TResult unLikedPost(
            Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return loggedOut(loggedOutFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialState(),
    TResult createdPost(
        Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    TResult currentUser(
        Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    TResult postById(Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    TResult userById(Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult likedPost(Either<RemoteApiFailures, String> likeFailureOrSuccess),
    TResult loggedOut(
        Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    TResult unLikedPost(
        Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut(loggedOutFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialState(InitialState value),
    @required TResult createdPost(CreatedPost value),
    @required TResult currentUser(CurrentUser value),
    @required TResult feed(Feed value),
    @required TResult postById(PostById value),
    @required TResult userById(UserById value),
    @required TResult likedPost(LikedPost value),
    @required TResult loggedOut(LoggedOut value),
    @required TResult unLikedPost(UnlikedPost value),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialState(InitialState value),
    TResult createdPost(CreatedPost value),
    TResult currentUser(CurrentUser value),
    TResult feed(Feed value),
    TResult postById(PostById value),
    TResult userById(UserById value),
    TResult likedPost(LikedPost value),
    TResult loggedOut(LoggedOut value),
    TResult unLikedPost(UnlikedPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class LoggedOut implements CoreState {
  const factory LoggedOut(
          {Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess}) =
      _$LoggedOut;

  Either<RemoteApiFailures, Unit> get loggedOutFailureOrSuccess;
  $LoggedOutCopyWith<LoggedOut> get copyWith;
}

/// @nodoc
abstract class $UnlikedPostCopyWith<$Res> {
  factory $UnlikedPostCopyWith(
          UnlikedPost value, $Res Function(UnlikedPost) then) =
      _$UnlikedPostCopyWithImpl<$Res>;
  $Res call({Either<RemoteApiFailures, String> unLikeFailureOrSuccess});
}

/// @nodoc
class _$UnlikedPostCopyWithImpl<$Res> extends _$CoreStateCopyWithImpl<$Res>
    implements $UnlikedPostCopyWith<$Res> {
  _$UnlikedPostCopyWithImpl(
      UnlikedPost _value, $Res Function(UnlikedPost) _then)
      : super(_value, (v) => _then(v as UnlikedPost));

  @override
  UnlikedPost get _value => super._value as UnlikedPost;

  @override
  $Res call({
    Object unLikeFailureOrSuccess = freezed,
  }) {
    return _then(UnlikedPost(
      unLikeFailureOrSuccess: unLikeFailureOrSuccess == freezed
          ? _value.unLikeFailureOrSuccess
          : unLikeFailureOrSuccess as Either<RemoteApiFailures, String>,
    ));
  }
}

/// @nodoc
class _$UnlikedPost implements UnlikedPost {
  const _$UnlikedPost({this.unLikeFailureOrSuccess});

  @override
  final Either<RemoteApiFailures, String> unLikeFailureOrSuccess;

  @override
  String toString() {
    return 'CoreState.unLikedPost(unLikeFailureOrSuccess: $unLikeFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnlikedPost &&
            (identical(other.unLikeFailureOrSuccess, unLikeFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.unLikeFailureOrSuccess, unLikeFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unLikeFailureOrSuccess);

  @override
  $UnlikedPostCopyWith<UnlikedPost> get copyWith =>
      _$UnlikedPostCopyWithImpl<UnlikedPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialState(),
    @required
        TResult createdPost(
            Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    @required
        TResult currentUser(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    @required
        TResult postById(
            Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    @required
        TResult userById(
            Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    @required
        TResult likedPost(
            Either<RemoteApiFailures, String> likeFailureOrSuccess),
    @required
        TResult loggedOut(
            Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    @required
        TResult unLikedPost(
            Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return unLikedPost(unLikeFailureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialState(),
    TResult createdPost(
        Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess),
    TResult currentUser(
        Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult feed(Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess),
    TResult postById(Either<RemoteApiFailures, PostModel> postFailureOrSuccess),
    TResult userById(Either<RemoteApiFailures, UserModel> userFailureOrSuccess),
    TResult likedPost(Either<RemoteApiFailures, String> likeFailureOrSuccess),
    TResult loggedOut(
        Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess),
    TResult unLikedPost(
        Either<RemoteApiFailures, String> unLikeFailureOrSuccess),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unLikedPost != null) {
      return unLikedPost(unLikeFailureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialState(InitialState value),
    @required TResult createdPost(CreatedPost value),
    @required TResult currentUser(CurrentUser value),
    @required TResult feed(Feed value),
    @required TResult postById(PostById value),
    @required TResult userById(UserById value),
    @required TResult likedPost(LikedPost value),
    @required TResult loggedOut(LoggedOut value),
    @required TResult unLikedPost(UnlikedPost value),
  }) {
    assert(initialState != null);
    assert(createdPost != null);
    assert(currentUser != null);
    assert(feed != null);
    assert(postById != null);
    assert(userById != null);
    assert(likedPost != null);
    assert(loggedOut != null);
    assert(unLikedPost != null);
    return unLikedPost(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialState(InitialState value),
    TResult createdPost(CreatedPost value),
    TResult currentUser(CurrentUser value),
    TResult feed(Feed value),
    TResult postById(PostById value),
    TResult userById(UserById value),
    TResult likedPost(LikedPost value),
    TResult loggedOut(LoggedOut value),
    TResult unLikedPost(UnlikedPost value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unLikedPost != null) {
      return unLikedPost(this);
    }
    return orElse();
  }
}

abstract class UnlikedPost implements CoreState {
  const factory UnlikedPost(
          {Either<RemoteApiFailures, String> unLikeFailureOrSuccess}) =
      _$UnlikedPost;

  Either<RemoteApiFailures, String> get unLikeFailureOrSuccess;
  $UnlikedPostCopyWith<UnlikedPost> get copyWith;
}
