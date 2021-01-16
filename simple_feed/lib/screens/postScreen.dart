import 'dart:io';
import 'package:simple_feed/bloc/core/core_bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPost extends StatefulWidget {
  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final _postTextController = TextEditingController();

  File _image;
  Future getImage() async {
    final image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    CoreBloc _coreBloc = BlocProvider.of<CoreBloc>(context);
    return Scaffold(
        //TODO: Make it a stack, the button on top of the picture
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          title: Align(
            alignment: Alignment.centerRight,
            child: RaisedButton(
              onPressed: () {
                _coreBloc.add(CreatePost(
                    caption: _postTextController.text, image: _image));
              },
              color: Color(0xFFE9446A),
              padding: EdgeInsets.symmetric(
                  vertical: 8.0, horizontal: data.size.width * 0.1),
              child: Container(
                child: Text(
                  "Post",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        body: BlocConsumer<CoreBloc, CoreState>(
          listener: (context, state) {
            state.maybeMap(
                orElse: () {},
                createdPost: (CreatedPost) {
                  CreatedPost.createdPostFailureOrSuccess.fold(
                      (l) => {
                            Scaffold.of(context).showSnackBar(SnackBar(
                                content: Text("Failed to Create Post")))
                          },
                      (r) => {_coreBloc.add(NavToFeedPage())});
                });
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.grey[100],
                    height: data.size.height * 0.4,
                    width: data.size.width,
                    child: Center(
                      child: _image == null
                          ? FloatingActionButton(
                              onPressed: getImage,
                              elevation: 0,
                              backgroundColor: Colors.white,
                              foregroundColor:
                                  Theme.of(context).textTheme.button.color,
                              child: Icon(
                                Icons.camera_alt,
                                size: 35.0,
                              ))
                          : GestureDetector(
                              onTap: getImage,
                              child: Image.file(
                                _image,
                                width: data.size.width * 0.9,
                              ),
                            ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      // validator: (value) {},
                      keyboardType: TextInputType.text,
                      controller: _postTextController,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "What's happening?",
                        hintStyle: Theme.of(context).textTheme.headline2,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
