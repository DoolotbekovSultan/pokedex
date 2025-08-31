import 'package:flutter/material.dart';
import 'package:pokedex/detail_screen.dart';
import 'package:pokedex/mock_data/pokemon_mock_data.dart';
import 'package:pokedex/model/pokemon/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final int index;
  late final Pokemon pokemon = PokemonMockData.pokemons[index];

  PokemonCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen(index: index)),
        );
      },
      child: SizedBox(
        width: 104,
        height: 112,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: pokemon.color),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 16,
                child: Container(
                  padding: EdgeInsets.only(right: 8),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "#${pokemon.number}",
                    style: TextStyle(fontSize: 8, color: pokemon.color),
                  ),
                ),
              ),
              Expanded(
                flex: 72,
                child: Image.network(
                  pokemon.imgUrl,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Image.asset("assets/icons/ic_no_image.png");
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset("assets/icons/ic_no_image.png");
                  },
                ),
              ),
              Expanded(
                flex: 24,
                child: Container(
                  decoration: BoxDecoration(
                    color: pokemon.color,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      pokemon.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
