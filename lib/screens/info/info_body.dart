import 'package:flutter/material.dart';

class InfoBody extends StatefulWidget {
  const InfoBody(this.pokemonInfo, this.heroTag, {Key? key}) : super(key: key);

  final pokemonInfo;
  final heroTag;

  @override
  _InfoBodyState createState() => _InfoBodyState();
}

class _InfoBodyState extends State<InfoBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 210,
          ),
          height: 550,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Hero(
              tag: widget.heroTag,
              child: Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(widget.pokemonInfo['img']))),
              )),
        ),
        Positioned(
          top: 250,
          left: 100,
          height: 450.0,
          width: 450.0,
          child: Opacity(
            opacity: 0.2,
            child: Image.asset("assets/pokeball5.png"),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 220,
              ),
              Center(
                  child: Text(
                "\n${widget.pokemonInfo['name']}",
                style:
                    const TextStyle(fontSize: 50.0, fontWeight: FontWeight.w700),
              )),
              Center(
                  child: Text(
                "\nHeight: ${widget.pokemonInfo['height']}\n"
                "Weight: ${widget.pokemonInfo['weight']}\n",
                style:
                    const TextStyle(fontSize: 25.0, fontWeight: FontWeight.w400),
              )),
              const Center(
                  child: Text(
                "Types\n",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w600),
              )),
              // Positioned(child: Text(widget.pokemonInfo['type'].join(", "))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.pokemonInfo['type']
                    .map<Widget>((type) => _pokemonTypeView(type))
                    .toList(),
              ),
            ],
          ),
        ),
      ],
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
      case 'Fairy':
        color = const Color(0xFFEEB0FA);
        break;
      default:
        color = const Color(0xFFFFC400);
        break;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: color, borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Text(
          type.toUpperCase(),
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            fontSize: 25.0
          ),
        ),
      ),
    );
  }
}
