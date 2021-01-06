import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:simple_feed/models/response_models.dart';

import 'failures/remote_api_failures.dart';

abstract class RemoteApiAbstract {
  Future<Either<RemoteApiFailures, UserModel>> verify({String phonenumber});
  Future<Either<RemoteApiFailures, Unit>> logout();
  Future<Either<RemoteApiFailures, PostModel>> createPost(
      {String caption, File image});
  Future<Either<RemoteApiFailures, Unit>> likePost();
  Future<Either<RemoteApiFailures, Unit>> unlikePost();
  Future<Either<RemoteApiFailures, PostModel>> getPostById();
  Future<Either<RemoteApiFailures, FeedModel>> getFeed();
  Future<Either<RemoteApiFailures, UserModel>> getCurrentUser();
  Future<Either<RemoteApiFailures, UserModel>> getUserById();
}
