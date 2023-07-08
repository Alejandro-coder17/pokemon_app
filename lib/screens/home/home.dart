import 'package:flutter/material.dart';
import 'card_pokemon_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const CardPokemonList()
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        color: Colors.black,
        icon: const Icon(
            Icons.home
        ),
        onPressed: () =>
            Navigator.pop(context),
      ),
      centerTitle: true,
      title: const Text(
        "Pokemon",
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
    );
  }
}
