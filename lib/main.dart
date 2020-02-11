import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/network/network_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic tac toe"),
      ),
      body: FutureBuilder(
        future: fetch(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final data = snapshot.data;
            return SingleChildScrollView(
              child: Text(data),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Future<String> fetch() async {
    final posts = await NetworkService().getPosts();
    return posts.data.join();
  }

  Future<String> fetchPost() async {
    final post = await NetworkService().getPost();
    return post.data.title;
  }
}
