import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/bloc/test_bloc.dart';
import 'package:tictactoe/bloc/test_event.dart';
import 'package:tictactoe/bloc/test_state.dart';
import 'package:tictactoe/core/injection/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Env.dev);
  runApp(MyApp());
}

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
      body: BlocProvider(
        create: (context) => g.get<TestBloc>()..add(TestEvent.login()),
        child: BlocBuilder<TestBloc, TestState>(
          builder: (context, state) => state.when(
            progress: () => CircularProgressIndicator(),
            success: (result) => Text(
              result,
              style: TextStyle(color: Colors.green),
            ),
            error: (message) => Text(
              message,
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
