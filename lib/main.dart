import 'package:apprentice_220820/recipe.dart';
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
      body: SafeArea(
        child: ListView.builder(
            itemCount: Recipe_Data.samples.length,
            itemBuilder: (BuildContext context, int index) {
              // TODO: Add GestureDetector
              //7
              return GestureDetector(
                  //8
                  onTap: () {
                    //9
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      // 10
                      // TODO: Replace return with return RecipeDetail()
                      return Text('Datail Page');
                    }));
                  },
                  child: buildRecipeCard(Recipe_Data.samples[index]));
            }),
      ),
    );
  }

  Widget buildRecipeCard(Recipe_Data recipe_data) {
    return Card(
      //1
      elevation: 2.0,
      //2
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      //3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        //4
        child: Column(
          children: [
            Image(image: AssetImage(recipe_data.imageURL)),
            //5
            const SizedBox(height: 14.0),
            //6
            Text(
              recipe_data.label,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Palatino'),
            ),
          ],
        ),
      ),
    );
  }
}
