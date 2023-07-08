import 'package:flutter/material.dart';

import 'info_body.dart';

class PokemonInfo extends StatelessWidget {
  const PokemonInfo(this.pokemonInfo, this.heroTag, {Key? key}) : super(key: key);

  final pokemonInfo;
  final heroTag;

  @override
  Widget build(BuildContext context) {

    var types = pokemonInfo['type'][0];
    return Scaffold(
      backgroundColor: types == "Grass" ? Colors.lightGreen : types == "Fire" ? Colors.redAccent
          : types == "Water" ? Colors.blue : types == "Poison" ? Colors.deepPurpleAccent
          : types == "Electric" ? Colors.amberAccent : types == "Rock" ? Colors.grey
          : types == "Ground" ? Colors.brown : types == "Psychic" ? Colors.pinkAccent
          : types == "Fighting" ? Colors.orange : types == "Bug" ? Colors.greenAccent
          : types == "Ghost" ? Colors.deepPurple : types == "Normal" ? Colors.grey
          : types == "Ice" ? Colors.cyanAccent : types == "Dragon" ? Colors.indigo
          : Colors.pink,
      appBar: buildAppBar(context),
      body: InfoBody(pokemonInfo, heroTag),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        color: Colors.black,
        icon: const Icon(
          Icons.arrow_back
        ),
        onPressed: () =>
          Navigator.pop(context),
      ),
    );
  }
}
