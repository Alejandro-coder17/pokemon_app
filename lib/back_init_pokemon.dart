import 'package:flutter/material.dart';
import 'screens/home/home.dart';

class BackInitPokemon extends StatelessWidget {
  BackInitPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      const GradientBack(),
      const ImageInit(),
      const TituloPokemon(),
      Positioned(
          bottom: 0.0,
          left: 50,
          right: 50,
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  PokeballWhiteImage(),
                  LoupeWhiteImage()
                ],
              ),
              height: 125.0,
              color: const Color(0x00323030).withOpacity(1)
          )
      ),
    ]);
  }
}

class GradientBack extends StatelessWidget {
  const GradientBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff9c121c), Color(0xffee273d)],
              begin: FractionalOffset(1.0, 0.1),
              end: FractionalOffset(1.0, 0.9))),
    );
  }
}

class ImageInit extends StatelessWidget {
  const ImageInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage('assets/init_image.png')
        )
      ),
    );
  }
}

class PokeballWhiteImage extends StatelessWidget {
  const PokeballWhiteImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      //alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/pokeball.png')),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Home()));
        },
        child: const Text(''),
      ),
    );
  }
}

class TituloPokemon extends StatelessWidget {
  const TituloPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        'assets/titulo_pokemon.png',
        width: 300,
      ),
    );
  }
}

class LoupeWhiteImage extends StatelessWidget {
  const LoupeWhiteImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      //margin: const EdgeInsets.only(top: 450, left: 100),
      //alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/lupita.png')),
      ),
      child: TextButton(
        onPressed: () {
          debugPrint('Linkear a Pantalla');
        },
        child: const Text(''),
      ),
    );
  }
}
