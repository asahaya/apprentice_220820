import 'package:flutter/material.dart';

void main() {
  runApp(const RecipiApp());
}

class RecipiApp extends StatelessWidget {
  const RecipiApp({Key? key}) : super(key: key);

//1_
  @override
  Widget build(BuildContext context) {
    //2_ 標準的なThemeData
    final ThemeData theme = ThemeData();
    //3_
    return MaterialApp(
      //4_デバイスが判別する名前、UIに表示はされない
      title: 'Recipe Calculator',
      //5_テーマをCopyWithして配色を最新のものに置き換える
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      //6_titleを追加してデータを渡す
      home: const MyHomePage(
        title: 'RecipeCalculator',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
    );
  }
}
