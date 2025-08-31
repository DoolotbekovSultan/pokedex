import 'dart:ui';

import 'package:pokedex/model/pokemon/pokemon_components/base_stats.dart';
import 'package:pokedex/model/pokemon/pokemon_components/pokemon_power.dart';

enum Pokemon {
  bulbasaur(
      color: Color(0xFF74CB48),
      number: "001",
      name: "Bulbasaur",
      imgUrl: "https://archives.bulbagarden.net/media/upload/thumb/f/fb/0001Bulbasaur.png/800px-0001Bulbasaur.png",
      powers: [PokemonPower.grass, PokemonPower.poison],
      weightKg: 6.9,
      heightM: 0.7,
      moves: "Chlorophyll Overgrow",
      description: "There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.",
      baseStats: BaseStats(
        hp: 45,
        atk: 49,
        def: 49,
        satk: 65,
        sdef: 65,
        spd: 45
      )
  ),
  charmander(
      color: Color(0xFFF57D31),
      number: "004",
      name: "Charmander",
      imgUrl: "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/004.png",
      powers: [PokemonPower.fire],
      weightKg: 8.5,
      heightM: 0.6,
      moves: "Mega-Punch Fire-Punch",
      description: "It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.",
      baseStats: BaseStats(
          hp: 39,
          atk: 52,
          def: 43,
          satk: 60,
          sdef: 50,
          spd: 65
      )
  ),
  squirtle(
      color: Color(0xFF6493EB),
      number: "007",
      name: "Squirtle",
      imgUrl: "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/detail/007.png",
      powers: [PokemonPower.water],
      weightKg: 9.0,
      heightM: 0.5,
      moves: "Torrent Rain-Dish",
      description: "When it retracts its long neck into its shell, it squirts out water with vigorous force.",
      baseStats: BaseStats(
          hp: 44,
          atk: 48,
          def: 65,
          satk: 50,
          sdef: 64,
          spd: 43
      )
  ),
  butterfree(
    color: Color(0xFFA7B723),
    number: "012",
    name: "Butterfree",
    imgUrl: "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/detail/012.png",
    powers: [PokemonPower.bug, PokemonPower.flying],
    weightKg: 32.0,
    heightM: 1.1,
    moves: "Compound-Eyes Tinted-Lens",
    description: "In battle, it flaps its wings at high speed to release highly toxic dust into the air.",
    baseStats: BaseStats(
      hp: 60,
      atk: 45,
      def: 50,
      satk: 90,
      sdef: 80,
      spd: 70,
    ),
  ),
  pikachu(
    color: Color(0xFFF9CF30),
    number: "025",
    name: "Pikachu",
    imgUrl: "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/detail/025.png",
    powers: [PokemonPower.electric],
    weightKg: 6.0,
    heightM: 0.4,
    moves: "Mega-Punch Pay-Day",
    description: "Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.",
    baseStats: BaseStats(
      hp: 35,
      atk: 55,
      def: 40,
      satk: 50,
      sdef: 50,
      spd: 90,
    ),
  ),
  gastly(
      color: Color(0xFF70589B),
      number: "092",
      name: "Gastly",
      imgUrl: "https://archives.bulbagarden.net/media/upload/thumb/c/c2/0092Gastly.png/640px-0092Gastly.png",
      powers: [PokemonPower.ghost, PokemonPower.type],
      weightKg: 0.1,
      heightM: 1.3,
      moves: "Levitate",
      description: "Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.",
      baseStats: BaseStats(
          hp: 30,
          atk: 35,
          def: 30,
          satk: 100,
          sdef: 35,
          spd: 80
      )
  ),
  ditto(
    color: Color(0xFFAAA67F),
    number: "132",
    name: "Ditto",
    imgUrl: "https://upload.wikimedia.org/wikipedia/en/thumb/d/d4/Pokemon-Ditto-Artwork.png/250px-Pokemon-Ditto-Artwork.png",
    powers: [PokemonPower.normal],
    weightKg: 4.0,
    heightM: 0.3,
    moves: "Limber Imposter",
    description: "It can reconstitute its entire cellular structure to change into what it sees, but it returns to normal when it relaxes.",
    baseStats: BaseStats(
        hp: 48,
        atk: 48,
        def: 48,
        satk: 48,
        sdef: 48,
        spd: 48
    ),
  ),
  mew(
    color: Color(0xFFFB5584),
    number: "151",
    name: "Mew",
    imgUrl: "https://upload.wikimedia.org/wikipedia/en/thumb/4/4b/Pokémon_Mew_art.png/250px-Pokémon_Mew_art.png",
    powers: [PokemonPower.phychic],
    weightKg: 4.0,
    heightM: 0.4,
    moves: "Synchronize",
    description: "When viewed through a microscope, this Pokémon’s short, fine, delicate hair can be seen.",
    baseStats: BaseStats(
        hp: 100,
        atk: 100,
        def: 100,
        satk: 100,
        sdef: 100,
        spd: 100
    ),
  ),
  aron(
    color: Color(0xFFB7B9D0),
    number: "304",
    name: "Aron",
    imgUrl: "https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/304.png",
    powers: [PokemonPower.steel, PokemonPower.rock],
    weightKg: 60.0,
    heightM: 0.4,
    moves: "Sturdy Rock-Head",
    description: "It eats iron ore - and sometimes railroad tracks - to build up the steel armor that protects its body.",
    baseStats: BaseStats(
        hp: 50,
        atk: 70,
        def: 100,
        satk: 40,
        sdef: 40,
        spd: 30
    ),
  ),


  ;

  final Color color;
  final String number;
  final String name;
  final String imgUrl;
  final List<PokemonPower> powers;
  final double weightKg;
  final double heightM;
  final String moves;
  final String description;
  final BaseStats baseStats;

  const Pokemon({
    required this.color,
    required this.number,
    required this.name,
    required this.imgUrl,
    required this.powers,
    required this.weightKg,
    required this.heightM,
    required this.moves,
    required this.description,
    required this.baseStats
  });

}