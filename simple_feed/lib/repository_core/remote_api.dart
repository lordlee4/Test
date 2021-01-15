import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:simple_feed/models/response_models.dart';
import 'package:simple_feed/repository_core/failures/remote_api_failures.dart';
import 'package:simple_feed/repository_core/remote_api_abstract.dart';

@lazySingleton
class RemoteApi implements RemoteApiAbstract {
  Dio _dio;
  String token;
  final FirebaseAuth _firebaseAuth;
  String baseUrl = "https://simple-feed-test.herokuapp.com/v1/";

  // String baseUrl = "https://simple-feed-prod.herokuapp.com/";
  RemoteApi(this._dio, this._firebaseAuth);

  Future setHeader() async {
    if (token == null) {
      final user = _firebaseAuth.currentUser;
      token = await user?.getIdToken();

      if (token == null) {
        return null;
      }
      print("over here");
      _dio.options.headers['Authorization'] = "Bearer $token";
    }
    return _dio;
  }

  @override
  Future<Either<RemoteApiFailures, PostModel>> createPost(
      {String caption, File image}) async {
    await setHeader();
    FormData formdata = FormData.fromMap({
      "caption": caption,
      "image": await MultipartFile.fromFile(image.path,
          filename: path.basename(image.path))
    });
    try {
      final response = await _dio.post(baseUrl + "posts", data: formdata);
      return right(PostModel.fromJson(response.data as Map<String, dynamic>));
    } catch (error) {
      return left(const RemoteApiFailures.failedToCreatePost());
    }
  }

  @override
  Future<Either<RemoteApiFailures, UserModel>> getCurrentUser() async {
    await setHeader();
    try {
      final response = await _dio.get(baseUrl + "users/mine");

      return right(UserModel.fromJson(response.data as Map<String, dynamic>));
    } catch (error) {
      return left(const RemoteApiFailures.failedToGetMine());
    }
  }

  @override
  Future<Either<RemoteApiFailures, FeedModel>> getFeed({int page}) async {
    try {
      final response =
          await _dio.get(baseUrl + "posts/", queryParameters: {"page": page});
      return right(FeedModel.fromJson(response.data as Map<String, dynamic>));
    } catch (error) {
      return left(const RemoteApiFailures.failedToGetFeed());
    }
  }

  @override
  Future<Either<RemoteApiFailures, PostModel>> getPostById({String id}) async {
    await setHeader();
    try {
      final response = await _dio.get(
        baseUrl + "posts/${id}",
      );
      return right(PostModel.fromJson(response.data as Map<String, dynamic>));
    } catch (error) {
      return left(const RemoteApiFailures.failedToGetPostById());
    }
  }

  @override
  Future<Either<RemoteApiFailures, UserModel>> getUserById({String id}) async {
    await setHeader();
    try {
      final response = await _dio.get(
        baseUrl + "users/${id}",
      );
      return right(UserModel.fromJson(response.data as Map<String, dynamic>));
    } catch (error) {
      return left(const RemoteApiFailures.failedToGetUserById());
    }
  }

  @override
  Future<Either<RemoteApiFailures, String>> likePost({String id}) async {
    await setHeader();
    try {
      final response = await _dio.put(baseUrl + "posts/like/${id}");
      return right(id);
    } catch (error) {
      return left(RemoteApiFailures.failedToLikePost(id: id));
    }
  }

  @override
  Future<Either<RemoteApiFailures, Unit>> logout() async {
    await setHeader();
    try {
      final response = await _dio.post(baseUrl + "accounts/logout");
      return right(unit);
    } catch (error) {
      return left(const RemoteApiFailures.failedToLogout());
    }
  }

  @override
  Future<Either<RemoteApiFailures, String>> unlikePost({String id}) async {
    await setHeader();
    try {
      final response = await _dio.put(baseUrl + "posts/unlike/${id}");
      return right(id);
    } catch (error) {
      return left(RemoteApiFailures.failedToUnLikePost(id: id));
    }
  }

  @override
  Future<Either<RemoteApiFailures, UserModel>> verify(
      {String phonenumber}) async {
    await setHeader();
    try {
      print("hallu${_dio.options.headers}");
      final response = await _dio.post(baseUrl + "accounts/verify",
          data: {"phoneNumber": "+251$phonenumber"});
      print("hey ${response.data}");

      return right(UserModel.fromJson(response.data as Map<String, dynamic>));
    } catch (error) {
      print("Error over here $error  +251$phonenumber");
      return left(const RemoteApiFailures.failedToVerify());
    }
  }
}
