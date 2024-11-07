import 'package:bloc_practice/bussinces_logic_layer/cubit/characters_cubit.dart';
import 'package:bloc_practice/data_layer/repositry/characters_repositry.dart';
import 'package:bloc_practice/data_layer/web_serves/characterss_web_service.dart';
import 'package:bloc_practice/persentation_layer/screens/characters_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'string.dart';

class AppRouter {
  late CharactersRepositry charactersRepositry;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepositry = CharactersRepositry(CharactersWebService());
    charactersCubit = CharactersCubit(charactersRepositry);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => charactersCubit,
                  child:  const CharctersScreen(),
                ));
    }
    return null;
  }
}
