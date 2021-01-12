import 'dart:js';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_feed/models/response_models.dart';
import 'package:simple_feed/bloc/post/post_bloc.dart';

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
      body: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) => _buildBody(state, context)),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _buildBody(PostState state, BuildContext context) {
    final data = MediaQuery.of(context);
    return BlocListener<PostBloc, PostState>(
      listener: (context, state) {
        if (state is PostLoadFailure) {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Error"),
          ));
        }
      },
      child: Builder(
        builder: (context) {
          if (state is PostInitial) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PostLoadSuccess) {
            return Column(
              children: [
                NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    if (notification is ScrollEndNotification) {
                      ScrollMetrics metrics = notification.metrics;
                      if (metrics.pixels >= metrics.maxScrollExtent &&
                          !metrics.outOfRange) {
                        // BlocProvider.of<PostBloc>(context)
                        //     .add(ScrollEndReached());
                      }
                    }
                    return true;
                  },
                  child: Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 20,
                        );
                      },
                      itemCount: state.posts.length,
                      itemBuilder: (context, index) {
                        final posts = state.posts[index];
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
                                      imageUrl: posts.image[index],
                                      placeholder: (context, url) => Center(
                                          child: CircularProgressIndicator(
                                              strokeWidth: 2)),
                                      placeholderFadeInDuration:
                                          Duration(milliseconds: 300),
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
                                      Text(posts.user.name),
                                      Row(
                                        children: [
                                          Text(posts.user.username),
                                          Text(posts.user.updated_at),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.favorite),
                                        onPressed: () {
                                          //TODO:Make is liked false
                                        },
                                      ),
                                      Text((posts.likes).toString()),
                                    ],
                                  ),
                                ],
                              ),
                              Text(posts.user.bio),
                            ]),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
