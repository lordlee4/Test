import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_feed/bloc/bloc/auth_bloc.dart';
import 'package:simple_feed/bloc/core/core_bloc.dart';
import 'package:simple_feed/injectable.dart';
import 'package:simple_feed/models/response_models.dart';
import 'package:simple_feed/screens/postScreen.dart';

// ignore: file_names
class Feeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  "Feed",
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
                  _authBloc.add(LoggedOutEvent());
                },
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: BlocProvider<CoreBloc>(
          create: (context) => getIt<CoreBloc>(),
          child: BuildBody(),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class BuildBody extends StatefulWidget {
  @override
  _BuildBodyState createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  @override
  Widget build(BuildContext context) {
    CoreBloc _coreBloc = BlocProvider.of<CoreBloc>(context);
    final data = MediaQuery.of(context);
    List<PostModel> postModelList = [];
    return BlocConsumer<CoreBloc, CoreState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            toPostPage: (ToPostPage) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddPost()));
            },
            toFeedPage: (ToFeedPage) {
              _coreBloc.add(const RefreshFeed());
            });
        //TODO:implement the fetch feed state failure and success
      },
      builder: (context, state) {
        state.maybeMap(
          orElse: () {},
          feed: (Feed) {
            Feed.feedFailureOrSuccess.fold(
                (failure) => {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text("Failed to get Feed")))
                    },
                (feedModel) => {
                      if (int.parse(feedModel.page) == 1)
                        {
                          postModelList.clear(),
                        },
                      feedModel.docs.forEach((postModel) => {
                            postModelList.add(postModel),
                            print(postModel),
                          }),
                    });
          },
        );
        return RefreshIndicator(
          onRefresh: () {
            print("required refresh");
          },
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              ScrollMetrics metrics = notification.metrics;
              if (notification is ScrollEndNotification) {
                if (metrics.pixels >= metrics.maxScrollExtent &&
                    !metrics.outOfRange) {
                  _coreBloc.add(CoreEvent.getFeed());
                }
              }
              return true;
            },
            child: Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  return await _coreBloc.add(const CoreEvent.refreshFeed());
                },
                child: SingleChildScrollView(
                  child: Column(
                    children: postModelList
                        .map((postModel) => PostModelView(context, postModel))
                        .toList(),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget PostModelView(BuildContext context, PostModel postModel) {
  const imageBaseUrl =
      "https://storage.googleapis.com/simple-feed-704cd.appspot.com/";
  final data = MediaQuery.of(context);
  var isLiked = postModel.isLiked;
  var postColor = isLiked ? Colors.red : Colors.white;
  CoreBloc _coreBloc = BlocProvider.of<CoreBloc>(context);
  return BlocConsumer<CoreBloc, CoreState>(
    listener: (context, state) {
      // TODO: implement listener
      state.maybeMap(
          orElse: () {},
          likedPost: (LikedPost) {
            LikedPost.likeFailureOrSuccess.fold(
                (failedToLikePost) => {
                      failedToLikePost.maybeMap(
                          orElse: () {},
                          failedToLikePost: (id) {
                            if (id == postModel.id) {
                              isLiked = !isLiked;
                            }
                          })
                    },
                (id) => {
                      if (id == postModel.id)
                        {
                          //TODO: create a notification that says you liked it
                        }
                    });
          },
          unLikedPost: (UnlikedPost) {
            UnlikedPost.unLikeFailureOrSuccess.fold(
                (failedToUnLikePost) => {
                      failedToUnLikePost.maybeMap(
                          orElse: () {},
                          failedToLikePost: (id) {
                            if (id == postModel.id) {
                              isLiked = !isLiked;
                            }
                          })
                    },
                (id) => {
                      if (id == postModel.id)
                        {
                          //TODO: create a notification that says you unliked it
                        }
                    });
          });
    },
    builder: (context, state) {
      return GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: data.size.height * .4,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
              // ignore: file_names, file_names
              flex: 2,
              child: Container(
                  width: data.size.width,
                  child: CachedNetworkImage(
                    fit: BoxFit.fitWidth,
                    imageUrl: imageBaseUrl + postModel.image,
                    placeholder: (context, url) => Center(
                        child: CircularProgressIndicator(strokeWidth: 2)),
                    placeholderFadeInDuration: Duration(milliseconds: 300),
                    errorWidget: (context, url, error) =>
                        Container(color: Colors.grey),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 22,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: data.size.width * .03,
                  ),
                  Column(
                    children: [
                      Text(
                        postModel.user.name,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                              "@" +
                                  postModel.user.username +
                                  " " +
                                  DateTime.parse(postModel.updated_at)
                                      .second
                                      .toString() +
                                  " sec ago",
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      .color,
                                  fontSize: 12.0)),
                          SizedBox(width: data.size.width * 0.05),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: data.size.width * 0.3,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      //TODO:Make is liked false
                      isLiked = !isLiked;
                      if (postModel.isLiked) {
                        _coreBloc.add(CoreEvent.likePost(id: postModel.id));
                      } else {
                        _coreBloc.add(CoreEvent.unlikePost(id: postModel.id));
                      }
                    },
                  ),
                  Text((postModel.likes).toString()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              child: Text(postModel.user.bio),
            ),
          ]),
        ),
      );
    },
  );
}

// (context, index) {
//   // final posts = state.posts[index];
//   final posts = postModelList[index];
//   return PostModelView(context, posts);
