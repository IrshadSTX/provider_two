import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_two/provider/provider_data.dart';
import 'package:provider_two/screens/user.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        home: UserPage(),
        theme: ThemeData(primarySwatch: Colors.amber),
      ),
    );
  }
}
