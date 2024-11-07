import 'package:bloc_practice/bussinces_logic_layer/cubit/characters_cubit.dart';
import 'package:bloc_practice/data_layer/model/characters.dart' as characters_list;
import 'package:bloc_practice/persentation_layer/widgets/character_itme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharctersScreen extends StatefulWidget {

  const CharctersScreen({super.key});

  @override
  State<CharctersScreen> createState() => _CharctersScreenState();
}

class _CharctersScreenState extends State<CharctersScreen> {
  late characters_list.Characters characters;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersCubit>(context).getAllCharactes();
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 185, 171, 38),
          title: const Text("Chararctes"),
        ),
        body: BlocBuilder<CharactersCubit, CharactersState>(
          builder: (context, State) {
            if (State is CharactersLoaded) {
              characters = (State).characters;
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 2),
                itemBuilder: (context, index) => CharacterItem(
                  
                  results: characters.results![index],
                ),
                itemCount: characters.results?.length,
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
