import 'package:flutter/material.dart';

class CardPokemon extends StatefulWidget {
  const CardPokemon(this.pokemonInfo, this.index, this.onTapTapped, {Key? key}) : super(key: key);

  final pokemonInfo;
  final index;
  final onTapTapped;

  @override
  _CardPokemonState createState() => _CardPokemonState();
}

class _CardPokemonState extends State<CardPokemon> {
  @override
  Widget build(BuildContext context) {

    final image = Stack(
      children: [
        Container(
          height: 100.0,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.center,
                  fit: BoxFit.fitHeight,
                  image: AssetImage("assets/pokeball.png"),
              )
          ),
        ),
        SizedBox(
          height: 100.0,
          child: Hero(
            tag: widget.index,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(widget.pokemonInfo['img'])
                )
              ),
            ),
          ),
        )
      ],
    );

    final name = Text(
      widget.pokemonInfo['name'],
      style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 17.0
      ),
    );

    final type = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.pokemonInfo['type']
          .map<Widget>((type) => _pokemonTypeView(type))
          .toList(),
    );

    var types = widget.pokemonInfo['type'][0];
    return GestureDetector(
      onTap: widget.onTapTapped,
      child: Container(
        padding: const EdgeInsets.only(top: 15.0),
        decoration: BoxDecoration(
          color: types == "Grass" ? Colors.lightGreen : types == "Fire" ? Colors.redAccent
              : types == "Water" ? Colors.blue : types == "Poison" ? Colors.deepPurpleAccent
              : types == "Electric" ? Colors.amberAccent : types == "Rock" ? Colors.grey
              : types == "Ground" ? Colors.brown : types == "Psychic" ? Colors.pinkAccent
              : types == "Fighting" ? Colors.orange : types == "Bug" ? Colors.greenAccent
              : types == "Ghost" ? Colors.deepPurple : types == "Normal" ? Colors.black38
              : types == "Ice" ? Colors.cyanAccent : types == "Dragon" ? Colors.indigo
              : Colors.pink,
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [image, name, type],
        ),
      ),
    );
  }

  Widget _pokemonTypeView(String type) {
    Color color;

    switch (type) {
      case 'Normal':
        color = const Color(0xFFbdbeb0);
        break;
      case 'Poison':
        color = const Color(0xFF995E98);
        break;
      case 'Psychic':
        color = const Color(0xFFE96EB0);
        break;
      case 'Grass':
        color = const Color(0xFF9CD363);
        break;
      case 'Ground':
        color = const Color(0xFFE3C969);
        break;
      case 'Ice':
        color = const Color(0xFFAFF4FD);
        break;
      case 'Fire':
        color = const Color(0xFFFF7043);
        break;
      case 'Rock':
        color = const Color(0xFFCBBD7C);
        break;
      case 'Dragon':
        color = const Color(0xFF8475F7);
        break;
      case 'Water':
        color = const Color(0xFF6DACF8);
        break;
      case 'Bug':
        color = const Color(0xFFC5D24A);
        break;
      case 'Dark':
        color = const Color(0xFF886958);
        break;
      case 'Fighting':
        color = const Color(0xFF9E5A4A);
        break;
      case 'Ghost':
        color = const Color(0xFF7774CF);
        break;
      case 'Steel':
        color = const Color(0xFFC3C3D9);
        break;
      case 'Flying':
        color = const Color(0xFF81A2F8);
        break;
      default:
        color = const Color(0xFFFFC400);
        break;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: color, borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Text(
          type.toUpperCase(),
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}

