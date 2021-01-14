import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_feed/bloc/core/core_bloc.dart';
import 'package:simple_feed/injectable.dart';
import 'package:simple_feed/models/response_models.dart';

class Feeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Text(
                "Feed",
                style: TextStyle(color: Colors.black),
              ),
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: BlocProvider<CoreBloc>(
        create: (context) => getIt<CoreBloc>(),
        child: _buildBody(context),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    CoreBloc _coreBloc = BlocProvider.of<CoreBloc>(context);
    final data = MediaQuery.of(context);
    List<PostModel> postModelList = [];
    return BlocConsumer<CoreBloc, CoreState>(
      listener: (context, state) {
        // TODO: implement listener
        // if (state is PostLoadFailure) {
        //   Scaffold.of(context).showSnackBar(SnackBar(
        //     content: Text("Error"),
        //   ));
        // }
        //TODO:implement the fetch feed state failure and success
        state.maybeMap(
          orElse: () {},
          feed: (Feed) {
            Feed.feedFailureOrSuccess.fold(
                (feedFailureOrSuccess) => {
                      Scaffold.of(context).showSnackBar(SnackBar(content: null))
                    },
                (feedModel) => {
                      if (int.parse(feedModel.page) == 1)
                        {
                          postModelList.clear(),
                        },
                      feedModel.docs
                          .map((postModel) => {postModelList.add(postModel)})
                    });
          },
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is ScrollEndNotification) {
                  ScrollMetrics metrics = notification.metrics;
                  if (metrics.pixels >= metrics.maxScrollExtent &&
                      !metrics.outOfRange) {
                    _coreBloc.add(CoreEvent.getFeed());
                  }
                }
                return true;
              },
              child: Expanded(
                child: Column(
                  children: postModelList
                      .map((postModel) => PostModelView(context, postModel))
                      .toList(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget PostModelView(BuildContext context, PostModel postModel) {
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
            height: 300,
            child: Column(children: [
              Expanded(
                flex: 2,
                child: Container(
                    width: data.size.width,
                    child: CachedNetworkImage(
                      fit: BoxFit.fitWidth,
                      imageUrl: postModel.image,
                      placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(strokeWidth: 2)),
                      placeholderFadeInDuration: Duration(milliseconds: 300),
                      errorWidget: (context, url, error) =>
                          Container(color: Colors.grey),
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Text(postModel.user.name),
                      Row(
                        children: [
                          Text(postModel.user.username),
                          Text(postModel.user.updated_at),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: postColor,
                        ),
                        onPressed: () {
                          //TODO:Make is liked false
                          isLiked = !isLiked;
                          if (postModel.isLiked) {
                            _coreBloc.add(CoreEvent.likePost(id: postModel.id));
                          } else {
                            _coreBloc
                                .add(CoreEvent.unlikePost(id: postModel.id));
                          }
                        },
                      ),
                      Text((postModel.likes).toString()),
                    ],
                  ),
                ],
              ),
              Text(postModel.user.bio),
            ]),
          ),
        );
      },
    );
  }
}

// (context, index) {
//   // final posts = state.posts[index];
//   final posts = postModelList[index];
//   return PostModelView(context, posts);
