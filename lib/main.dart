import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/core/network/api_exceptions.dart';
import 'package:tictactoe/core/network/model/token/login_request.dart';

import 'core/network/service/network_service.dart';

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
        future: _fetchGamesSecured(),
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

  Future<String> _fetchAllPosts() async {
    try {
      final posts = await NetworkService().getPosts();
      return posts.data.map((post) => post.title).join("\n\n");
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  Future<String> _fetchPost() async {
    try {
      final post = await NetworkService().getPost(1);
      return post.data.title;
    } catch (e) {
      print(e);
      return e.toString();
    }
  }

  Future<String> _fetchGamesSecured() async {
    try {
      final games = await NetworkService().getGames();
      return games.data.map((post) => post).join("\n\n");
    } on DioError catch (e) {
      print(e);
      final apiException = e.error as ApiException;
      return apiException.toString();
    }
  }

  Future<String> _login() async {
    final request = LoginRequest(
      email: "piotrlepadev@gmail.com",
      password: "dev12",
      grantType: "password",
    );
    try {
      final response = await NetworkService().login(request);
      return response.data.toString();
    } catch (e) {
      print(e);
      return e.toString();
    }
  }
}
