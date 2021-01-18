import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_feed/bloc/bloc/auth_bloc.dart';
import 'package:simple_feed/bloc/core/core_bloc.dart';
import 'package:simple_feed/injectable.dart';
import 'package:simple_feed/models/response_models.dart';
import 'package:simple_feed/screens/postScreen.dart';
import 'package:simple_feed/screens/welcome.dart';

class Feeds extends StatefulWidget {
  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  List<PostModel> postModelList = [];
  bool feedIsCorrupt = false;
  bool isRefreshingFeed = false;
  @override
  Widget build(BuildContext context) {
    CoreBloc _coreBloc = BlocProvider.of<CoreBloc>(context);
    AuthBloc _authBloc = BlocProvider.of<AuthBloc>(context);
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
                style: const TextStyle(color: Colors.black),
              ),
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                _authBloc.add(LoggedOutEvent());
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: BlocConsumer<CoreBloc, CoreState>(listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            toPostPage: (ToPostPage) {
              // await Navigator.push(
              //         context, MaterialPageRoute(builder: (context) => AddPost()))
              //     .then((value) =>
              //         {print("getfeed"), _coreBloc.add(const GetFeed())});
            },
            toFeedPage: (ToFeedPage) {
              _coreBloc.add(const RefreshFeed());
            },
            refreshingFeed: (RefreshingFeed) {
              isRefreshingFeed = true;
            },
            feed: (Feed) {
              isRefreshingFeed = false;
              Feed.feedFailureOrSuccess.fold(
                  (failure) => {
                        feedIsCorrupt = true,
                      },
                  (feedModel) => {});
            });

        //TODO:implement the fetch feed state failure and success
      }, builder: (context, state) {
        state.maybeMap(
            orElse: () {},
            initialState: (InitialState) {
              _coreBloc.add(const GetFeed());
            },
            feed: (Feed) {
              isRefreshingFeed = false;
              Feed.feedFailureOrSuccess.fold(
                  (failure) => {feedIsCorrupt = true},
                  (feedModel) => {
                        if (int.parse(feedModel.page) == 1)
                          {
                            postModelList.clear(),
                          },
                        feedModel.docs.forEach((postModel) => {
                              postModelList.add(postModel),
                            }),
                      });
            },
            refreshingFeed: (RefreshingFeed) {
              isRefreshingFeed = true;
            });
        return isRefreshingFeed
            ? Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : feedIsCorrupt || (postModelList.isEmpty && feedIsCorrupt)
                ? Container(
                    padding:
                        EdgeInsets.fromLTRB(0, data.size.height * 0.3, 0, 0),
                    child: Align(
                      heightFactor: data.size.height,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "Feed Could Not Load ╰（‵□′）╯",
                            style: TextStyle(fontSize: 21),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          IconButton(
                            iconSize: 50,
                            icon: Icon(Icons.refresh),
                            onPressed: () {
                              _coreBloc.add(RefreshFeed());
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                : NotificationListener<ScrollNotification>(
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
                    child: RefreshIndicator(
                      onRefresh: () async {
                        return await _coreBloc
                            .add(const CoreEvent.refreshFeed());
                      },
                      child: SingleChildScrollView(
                        child: Column(
                          children: postModelList
                              .map((postModel) => PostModelView(postModel))
                              .toList(),
                        ),
                      ),
                    ));
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () async {
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddPost()));
          setState(() {
            _coreBloc.add(new RefreshFeed());
          });
        },
      ),
    );
  }
}

class PostModelView extends StatefulWidget {
  final PostModel postModel;
  var isLiked;
  @override
  _PostModelViewState createState() => _PostModelViewState();

  PostModelView(this.postModel);
}

class _PostModelViewState extends State<PostModelView> {
  String imageBaseUrl =
      "https://storage.googleapis.com/simple-feed-704cd.appspot.com/";
  // var postModel = widget.postModel;
  @override
  Widget build(BuildContext context) {
    CoreBloc _coreBloc = BlocProvider.of<CoreBloc>(context);
    widget.isLiked =
        widget.isLiked == null ? widget.postModel.isLiked : widget.isLiked;
    var postColor = widget.isLiked ? Colors.red : Colors.grey;
    final data = MediaQuery.of(context);
    return Container(
      child: BlocConsumer<CoreBloc, CoreState>(
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
                                if (id == widget.postModel.id) {
                                  widget.isLiked = !widget.isLiked;
                                }
                              })
                        },
                    (id) => {});
              },
              unLikedPost: (UnlikedPost) {
                UnlikedPost.unLikeFailureOrSuccess.fold(
                    (failedToUnLikePost) => {
                          failedToUnLikePost.maybeMap(
                              orElse: () {},
                              failedToLikePost: (id) {
                                if (id == widget.postModel.id) {
                                  widget.isLiked = !widget.isLiked;
                                }
                              })
                        },
                    (id) => {});
              });
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: data.size.height * .4,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          width: data.size.width,
                          child: CachedNetworkImage(
                            fit: BoxFit.fitWidth,
                            imageUrl: imageBaseUrl + widget.postModel.image,
                            placeholder: (context, url) => Center(
                                child:
                                    CircularProgressIndicator(strokeWidth: 2)),
                            placeholderFadeInDuration:
                                Duration(milliseconds: 300),
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
                                widget.postModel.user.name,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(
                                      "@" +
                                          widget.postModel.user.username +
                                          " " +
                                          DateTime.parse(
                                                  widget.postModel.updated_at)
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
                            width: data.size.width * 0.03,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: postColor,
                            ),
                            onPressed: () {
                              //TODO:Make is liked false
                              if (widget.postModel.isLiked) {
                                _coreBloc.add(CoreEvent.likePost(
                                    id: widget.postModel.id));
                              } else {
                                _coreBloc.add(CoreEvent.unlikePost(
                                    id: widget.postModel.id));
                              }
                              setState(() {
                                widget.isLiked = !widget.isLiked;
                              });
                            },
                          ),
                          Text((widget.postModel.likes).toString()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 5),
                      child: Text(widget.postModel.user.bio),
                    ),
                  ]),
            ),
          );
        },
      ),
    );
  }
}
