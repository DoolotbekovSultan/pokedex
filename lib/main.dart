import 'package:flutter/material.dart';
import 'package:pokedex/widgets/pokemon_card.dart';
import 'package:pokedex/widgets/top_bar.dart';
import 'package:pokedex/model/pokemon/pokemon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16),
                const TopBar(),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PokemonCard(
                      pokemon: Pokemon.bulbasaur,
                    ),
                    SizedBox(width: 8),
                    PokemonCard(
                      pokemon: Pokemon.charmander,
                    ),
                    SizedBox(width: 8),
                    PokemonCard(
                      pokemon: Pokemon.squirtle,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PokemonCard(
                      pokemon: Pokemon.butterfree,
                    ),
                    SizedBox(width: 8),
                    PokemonCard(
                      pokemon: Pokemon.pikachu,
                    ),
                    SizedBox(width: 8),
                    PokemonCard(
                      pokemon: Pokemon.gastly,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PokemonCard(
                      pokemon: Pokemon.ditto,
                    ),
                    SizedBox(width: 8),
                    PokemonCard(
                      pokemon: Pokemon.mew,
                    ),
                    SizedBox(width: 8),
                    PokemonCard(
                      pokemon: Pokemon.aron,
                    )
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }

}
