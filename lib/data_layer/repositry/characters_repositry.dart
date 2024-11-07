import 'package:bloc_practice/data_layer/model/characters.dart';
import 'package:bloc_practice/data_layer/web_serves/characterss_web_service.dart';

class CharactersRepositry {
  late CharactersWebService charactersWebService;
  CharactersRepositry(this.charactersWebService);
  Future<Characters> getFeachCharacters() async {
    final characters = await charactersWebService.getAllCharacters();

    return characters
        .map((chatacter) => Characters.fromJson(chatacter))
        .toList();
  }
}
