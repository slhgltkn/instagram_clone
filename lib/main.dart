import 'package:flutter/material.dart';
import 'package:instagram/anaSayfa.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/search.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: (Search()),
    );
  }
}
