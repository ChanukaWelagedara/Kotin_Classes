import 'package:flutter/material.dart';
import 'package:train_tracker/Pages/Auth/loging.dart';
import 'package:train_tracker/Pages/Auth/signIn.dart';

import 'package:train_tracker/Pages/landind.dart';
import 'package:train_tracker/Pages/routes.dart';
import 'package:train_tracker/Pages/routesMain.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: RoutePage(),
      ),
    );
  }
}
