part of 'core_bloc.dart';

@freezed
abstract class CoreEvent with _$CoreEvent {
  const factory CoreEvent.initialEvent() = InitialEvent;
  const factory CoreEvent.createPost({String caption, File image}) = CreatePost;
  const factory CoreEvent.getCurrentUser() = GetCurrentUser;
  const factory CoreEvent.getFeed({int page}) = GetFeed;
  const factory CoreEvent.getPostById({String id}) = GetPostById;
  const factory CoreEvent.getUserById({String id}) = GetUserById;
  const factory CoreEvent.likePost({String id}) = LikePost;
  const factory CoreEvent.logout() = Logout;
  const factory CoreEvent.unlikePost({String id}) = UnlikePost;
  const factory CoreEvent.refreshFeed() = RefreshFeed;
}
