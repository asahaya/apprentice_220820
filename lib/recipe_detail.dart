import 'package:apprentice_220820/recipe.dart';
import 'package:flutter/material.dart';

class RecipeDatail extends StatefulWidget {
  final Recipe_Data recipe;

  const RecipeDatail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDatail> createState() => _RecipeDatailState();
}

class _RecipeDatailState extends State<RecipeDatail> {
  @override
  Widget build(BuildContext context) {
    //1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      //2
      body: SafeArea(
        //3
        child: Column(
          children: [
            //4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(
                  widget.recipe.imageURL,
                ),
              ),
            ),
            //5
            const SizedBox(height: 4),
            //6
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 16),
            ),
            // TODO: Add Expanded

            // TODO: Add Slider() here
          ],
        ),
      ),
    );
  }
}
// TODO: Add _RecipeDetailState here
