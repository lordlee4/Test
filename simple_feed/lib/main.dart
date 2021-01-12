import 'package:flutter/material.dart';
import 'package:simple_feed/bloc/core/core_bloc.dart';
import 'package:simple_feed/screens/feedScreen.dart';
import 'package:simple_feed/screens/postScreen.dart';
import 'package:simple_feed/screens/welcome.dart';
import 'package:simple_feed/utils/theme.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_feed/injectable.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:firebase_core/firebase_core.dart';
import 'package:dio/dio.dart';
import 'package:simple_feed/models/response_models.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: basicTheme(),
      home: Feeds(),
    );
  }
}

// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   File _image;
//   final picker = ImagePicker();
//
//   Future getImage() async {
//     final pickedFile = await picker.getImage(
//       source: ImageSource.gallery,
//     );
//
//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       } else {
//         print('No image selected.');
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Picker Example'),
//       ),
//       body: Column(
//         children: [
//           Center(
//             child: _image == null
//                 ? Text('No image selected.')
//                 : Image.file(_image),
//           ),
//           FlatButton(
//               onPressed: () async {
//                 Dio dio = Dio();
//                 String baseUrl = "https://simple-feed-test.herokuapp.com/v1/";
//                 // FormData formdata = FormData.fromMap({
//                 //   "caption": "test caption",
//                 //   "image": await MultipartFile.fromFile(_image.path,
//                 //       filename: path.basename(_image.path))
//                 // });
//                 // print(
//                 //     "${_image.path}, \n${_image.absolute.path}, \n${path.basename(_image.path)}");
//
//                 try {
//                   // var response = await dio.post(baseUrl, data: formdata);
//                   // final response = await dio.get(baseUrl + "users/mine");
//                   // final response = await dio
//                   //     .get(baseUrl + "posts/", queryParameters: {"page": 1});
//                   // final response = await dio.get(
//                   //   baseUrl + "posts/5ff865553e42c70035d5bb27",
//                   // );
//                   final response = await dio
//                       .put(baseUrl + "posts/like/5ff865553e42c70035d5bb27");
//                   print("response data ${response.data}");
//                   // var postModel =
//                   //     UserModel.fromJson(response.data as Map<String, dynamic>);
//                   //
//                   // print("postmodel = ${postModel.toString()}");
//                 } catch (e, DioError) {
//                   print(e);
//                   print("error logged");
//                 }
//               },
//               child: const Icon(
//                 Icons.ac_unit,
//               ))
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: getImage,
//         tooltip: 'Pick Image',
//         child: Icon(Icons.add_a_photo),
//       ),
//     );
//   }
// }
