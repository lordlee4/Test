import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_api_failures.freezed.dart';

@freezed
abstract class RemoteApiFailures<T> with _$RemoteApiFailures<T> {
  const factory RemoteApiFailures.failedToVerify() = FailedToVerify<T>;
  const factory RemoteApiFailures.failedToLogout() = FailedToLogout<T>;
  const factory RemoteApiFailures.failedToCreatePost() = FailedToCreatePost<T>;
  const factory RemoteApiFailures.failedToLikePost() = FailedToLikePost<T>;
  const factory RemoteApiFailures.failedToUnLikePost() = FailedToUnLikePost<T>;
  const factory RemoteApiFailures.failedToGetPostById() =
      FailedToGetPostById<T>;
  const factory RemoteApiFailures.failedToGetFeed() = FailedToGetFeed<T>;
  const factory RemoteApiFailures.failedToGetMine() = FailedToGetMine<T>;
  const factory RemoteApiFailures.failedToGetUserById() =
      FailedToGetUserById<T>;
}
