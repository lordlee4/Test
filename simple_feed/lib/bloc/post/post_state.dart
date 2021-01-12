part of 'post_bloc.dart';

@immutable
abstract class PostState {}

class PostInitial extends PostState {}

class PostLoadSuccess extends PostState {
  final List<PostModel> posts;
  PostLoadSuccess(this.posts);
}

class PostLoadFailure extends PostState {}
