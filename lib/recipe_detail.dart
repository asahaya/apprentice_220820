import 'dart:ffi';

import 'package:apprentice_220820/recipe.dart';
import 'package:flutter/material.dart';

class RecipeDatail extends StatefulWidget {
  final Recipe_Data recipe;

  const RecipeDatail({Key? key, required this.recipe}) : super(key: key);

  @override
  State<RecipeDatail> createState() => _RecipeDatailState();
}

class _RecipeDatailState extends State<RecipeDatail> {
// TODO: Add _sliderVal here
  int _sliderVal = 1;

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
            //7
            Expanded(
                //8
                child: ListView.builder(
                    padding: const EdgeInsets.all(7.0),
                    itemCount: widget.recipe.ingredients.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ingredient = widget.recipe.ingredients[index];
                      //9
                      // TODO: Add ingredient.quantity
                      return Text(
                          '${ingredient.quantity} ${ingredient.measure}${ingredient.name}');
                    })),
            // TODO: Add Slider() here
            Slider(
              //10
              min: 1,
              max: 10,
              divisions: 9,
              //11
              label: '${_sliderVal * widget.recipe.servings} servings',
              //12
              value: _sliderVal.toDouble(),
              //13
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              //14
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
// TODO: Add _RecipeDetailState here
