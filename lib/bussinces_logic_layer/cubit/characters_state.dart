part of 'characters_cubit.dart';

@immutable
sealed class CharactersState {}

final class CharactersInitial extends CharactersState {}
class CharactersLoaded extends CharactersState{
  final Characters characters;

  CharactersLoaded({required this.characters});
}
