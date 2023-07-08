import 'package:flutter/material.dart';
import 'package:pokemon_app/screens/info/pokemon_info.dart';
import 'card_pokemon.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CardPokemonList extends StatefulWidget {
  const CardPokemonList({Key? key}) : super(key: key);

  @override
  _CardPokemonListState createState() => _CardPokemonListState();
}

class _CardPokemonListState extends State<CardPokemonList> {

  final pokeApi = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  List? pokedex;

  @override
  void initState() {
    super.initState();
    if(mounted){
      fetchPokemonData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: (pokedex == null)?
        const Center(child: CircularProgressIndicator(),) :
        GridView.builder(
          itemCount: pokedex!.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 15.0
          ),
          itemBuilder: (BuildContext context, int index) =>
              CardPokemon(pokedex![index], index, () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PokemonInfo(pokedex![index], index))),),
        )
    );
  }

  void fetchPokemonData(){
    var url = Uri.https("raw.githubusercontent.com",
        "/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.get(url).then((value) {
      if(value.statusCode==200){
        var decodedJsonData = jsonDecode(value.body);
        pokedex = decodedJsonData['pokemon'];
        setState(() {

        });
      }
    });
  }

}
