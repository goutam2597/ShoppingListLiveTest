import 'package:flutter/material.dart';
import 'package:my_shopping_list_live_test/shopping_list.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyShoppingList(),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
    );
  }
}
