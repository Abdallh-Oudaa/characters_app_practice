import 'package:bloc_practice/data_layer/model/characters.dart';
import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  Results results;

  CharacterItem({required this.results, super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const Text("i'll devolep theis custom widget later"),
        Image(image: AssetImage(results.image??""))
      ],
    );
  }
}
