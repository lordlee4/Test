import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:simple_feed/models/response_models.dart';

import 'failures/remote_api_failures.dart';

abstract class RemoteApiAbstract {
  Future<Either<RemoteApiFailures, UserModel>> verify({String phonenumber});
  Future<Either<RemoteApiFailures, Unit>> logout();
  Future<Either<RemoteApiFailures, PostModel>> createPost(
      {String caption, File image});
  Future<Either<RemoteApiFailures, String>> likePost({String id});
  Future<Either<RemoteApiFailures, String>> unlikePost({String id});
  Future<Either<RemoteApiFailures, PostModel>> getPostById({String id});
  Future<Either<RemoteApiFailures, FeedModel>> getFeed({int page});
  Future<Either<RemoteApiFailures, UserModel>> getCurrentUser();
  Future<Either<RemoteApiFailures, UserModel>> getUserById({String id});
}
