part of 'core_bloc.dart';

@freezed
abstract class CoreState with _$CoreState {
  const factory CoreState.initialState() = InitialState;
  const factory CoreState.createdPost(
          {Either<RemoteApiFailures, PostModel> createdPostFailureOrSuccess}) =
      CreatedPost;
  const factory CoreState.currentUser(
          {Either<RemoteApiFailures, UserModel> userFailureOrSuccess}) =
      CurrentUser;
  const factory CoreState.feed(
      {Either<RemoteApiFailures, FeedModel> feedFailureOrSuccess}) = Feed;
  const factory CoreState.postById(
      {Either<RemoteApiFailures, PostModel> postFailureOrSuccess}) = PostById;
  const factory CoreState.userById(
      {Either<RemoteApiFailures, UserModel> userFailureOrSuccess}) = UserById;
  const factory CoreState.likedPost(
      {Either<RemoteApiFailures, String> likeFailureOrSuccess}) = LikedPost;
  const factory CoreState.loggedOut(
      {Either<RemoteApiFailures, Unit> loggedOutFailureOrSuccess}) = LoggedOut;
  const factory CoreState.unLikedPost(
      {Either<RemoteApiFailures, String> unLikeFailureOrSuccess}) = UnlikedPost;
  const factory CoreState.toPostPage() = ToPostPage;
  const factory CoreState.toFeedPage() = ToFeedPage;
}
