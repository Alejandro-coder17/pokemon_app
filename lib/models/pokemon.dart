class Pokemon{
  int id;
  String name;
  String height;
  String weight;
  String img;
  List<String> types;

  Pokemon({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.img,
    required this.types});

  /*factory Pokemon.fromJson(Map<String, dynamic> json){
    return Pokemon(
      name: json['name'],
      height: json['height'],
      weight: json['weight'],
      sprites: json['sprites'],
      types: json['types']
    );
  }*/
}

List<Pokemon> pokemons = [
  Pokemon(
    id: 1,
    name: "Bulbasaur",
    height: "7",
    weight: "69",
    img: "http://www.serebii.net/pokemongo/pokemon/001.png",
    types: ["Grass", "Poisson"]),
  Pokemon(
    id: 4,
    name: "charmander",
    height: "6",
    weight: "85",
    img: "http://www.serebii.net/pokemongo/pokemon/004.png",
    types: ["Fire"]),
  Pokemon(
    id: 7,
    name: "squirtle",
    height: "5",
    weight: "90",
    img: "http://www.serebii.net/pokemongo/pokemon/007.png",
    types: ["Water"]),
];

/*
class Sprites {
  String frontDefault;

  Sprites({required this.frontDefault});

  factory Sprites.fromJson(Map<String, dynamic> json){
    return Sprites(
        frontDefault: json['frontDefault']
    );
  }
}

class Types {
  int slot;
  Type type;

  Types({required this.slot, required this.type});

  factory Types.fromJson(Map<String, dynamic> json) {
    return Types(
    slot: json['slot'],
    type: json['type']
    );
  }
}

class Type {
  String name;
  String url;

  Type({required this.name, required this.url});

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
        name: json['name'],
        url: json['url']
    );
  }
}*/