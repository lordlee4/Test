import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:simple_feed/models/response_models.dart';
import 'package:simple_feed/repository_core/remote_api.dart';
import 'package:simple_feed/repository_core/failures/remote_api_failures.dart';
part 'core_event.dart';

part 'core_state.dart';
part 'core_bloc.freezed.dart';

@injectable
class CoreBloc extends Bloc<CoreEvent, CoreState> {
  final RemoteApi _remoteApi;
  int pageNumber = 1;
  CoreBloc(this._remoteApi) : super(const CoreState.initialState()) {
    add(const InitialEvent());
  }

  @override
  Stream<CoreState> mapEventToState(CoreEvent event) async* {
    yield* event.map(initialEvent: (e) async* {
      yield* _getFeed(pageNumber: pageNumber);
    }, createPost: (e) async* {
      final Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess =
          await _remoteApi.createPost(caption: e.caption, image: e.image);
      yield CreatedPost(
          createdPostFailureOrSuccess: createdPostFailureOrSuccess);
    }, getCurrentUser: (e) async* {
      final Either<RemoteApiFailures, UserModel> userFailureOrSuccess =
          await _remoteApi.getCurrentUser();
      yield CurrentUser(userFailureOrSuccess: userFailureOrSuccess);
    }, getFeed: (e) async* {
      yield* _getFeed(pageNumber: pageNumber);
    }, getPostById: (e) async* {
      final Either<RemoteApiFailures, PostModel> postFailureOrSuccess =
          await _remoteApi.getPostById(id: e.id);
      yield PostById(postFailureOrSuccess: postFailureOrSuccess);
    }, getUserById: (e) async* {
      final Either<RemoteApiFailures, UserModel> userFailureOrSuccess =
          await _remoteApi.getUserById(id: e.id);
      yield UserById(userFailureOrSuccess: userFailureOrSuccess);
    }, likePost: (e) async* {
      final Either<RemoteApiFailures, String> likeFailureOrSuccess =
          await _remoteApi.likePost(id: e.id);
      yield LikedPost(likeFailureOrSuccess: likeFailureOrSuccess);
    }, logout: (e) async* {
      final Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess =
          await _remoteApi.logout();
      yield LoggedOut(loggedOutFailureOrSuccess: loggedOutFailureOrSuccess);
    }, unlikePost: (e) async* {
      final Either<RemoteApiFailures, String> unLikeFailureOrSuccess =
          await _remoteApi.unlikePost(id: e.id);
      yield UnlikedPost(unLikeFailureOrSuccess: unLikeFailureOrSuccess);
    }, refreshFeed: (e) async* {
      print("refresh feed");
      pageNumber = 1;

      yield* _getFeed(pageNumber: pageNumber);
    }, navToFeedPage: (e) async* {
      yield const ToFeedPage();
    }, navToAddPostPage: (e) async* {
      yield const ToPostPage();
    });
  }

  Stream<CoreState> _getFeed({int pageNumber}) async* {
    final Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess =
        await _remoteApi.getFeed(page: pageNumber);
    feedFailureOrSuccess.foldRight(
        () {}, (r, previous) => {this.pageNumber += 1});
    yield Feed(feedFailureOrSuccess: feedFailureOrSuccess);
  }
}
