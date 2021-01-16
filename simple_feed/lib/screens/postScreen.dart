import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
    return Scaffold(
        //TODO: Make it a stack, the button on top of the picture
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            // ignore: file_names, file_names, file_names, file_names
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              RaisedButton(
                onPressed: () {},
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
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.grey[100],
                height: data.size.height * 0.4,
                width: data.size.width,
                child: Center(
                  child: FloatingActionButton(
                    onPressed: getImage,
                    elevation: 0,
                    backgroundColor: Colors.white,
                    foregroundColor: Theme.of(context).textTheme.button.color,
                    child: _image == null
                        ? Icon(
                            Icons.camera_alt,
                            size: 35.0,
                          )
                        : Image.file(_image),
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
        ));
  }
}
