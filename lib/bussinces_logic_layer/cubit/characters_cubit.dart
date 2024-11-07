import 'package:bloc/bloc.dart';
import 'package:bloc_practice/data_layer/model/characters.dart';
import 'package:bloc_practice/data_layer/repositry/characters_repositry.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersRepositry charactersRepositry;
    Characters? characters;
  CharactersCubit(this.charactersRepositry) : super(CharactersInitial());
 Characters getAllCharactes(){
    charactersRepositry.getFeachCharacters().then((charactes) {
      emit(CharactersLoaded(characters: charactes));
      characters=charactes;
    
    });
    return characters!;

  }
}
