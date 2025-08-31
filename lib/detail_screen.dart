import 'package:flutter/material.dart';
import 'package:pokedex/app_colors.dart';
import 'package:pokedex/model/pokemon/pokemon.dart';
import 'package:pokedex/widgets/detail_top_bar.dart';

class DetailScreen extends StatelessWidget {
  final Pokemon pokemon;

  DetailScreen({
    super.key,
    required this.pokemon
  });

  late final _imageWidget = SizedBox(
    width: 200,
    height: 200,
    child: Image.network(pokemon.imgUrl),
  );

  late final _powerLineWidget = Center(
      child: SizedBox(
      height: 28,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: pokemon.powers.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final power = pokemon.powers[index];
            return SizedBox(
                width: 51,
                child: Card(
                  color: power.color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      power.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                )
            );
          }
      ),
  )
  );

  late final _physicalInfoWidget = Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Row(
              children: [
                Image.asset("assets/icons/ic_weight.png"),
                SizedBox(width: 8),
                Text(
                  "${pokemon.weightKg} kg",
                  style: TextStyle(
                      color: AppColors.dark_gray,
                      fontSize: 10,
                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Weight",
              style: TextStyle(
                  color: AppColors.medium_gray,
                  fontSize: 8,
                  fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
        SizedBox(width: 24),
        Container(width: 1, height: 48, color: AppColors.light_gray),
        SizedBox(width: 24),
        Column(
          children: [
            Row(
              children: [
                Image.asset("assets/icons/ic_height.png"),
                SizedBox(width: 8),
                Text(
                  "${pokemon.heightM} m",
                  style: TextStyle(
                      color: AppColors.dark_gray,
                      fontSize: 10,
                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Height",
              style: TextStyle(
                  color: AppColors.medium_gray,
                  fontSize: 8,
                  fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
        SizedBox(width: 24),
        Container(width: 1, height: 48, color: AppColors.light_gray),
        SizedBox(width: 24),
        Column(
          children: [
            SizedBox(
              width: 65,
              height: 32,
              child: Center(
                child: Text(
                  pokemon.moves,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColors.dark_gray
                  ),
                ),
              )
            ),
            SizedBox(height: 10),
            Text(
              "Moves",
              style: TextStyle(
                  color: AppColors.medium_gray,
                  fontSize: 8,
                  fontWeight: FontWeight.w400
              ),
            )
          ],
        )
      ],
    ),
  );

  late final _aboutTextWidget = Center(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Text(
      "About",
      style: TextStyle(
          color: pokemon.color,
          fontWeight: FontWeight.w700,
          fontSize: 14
      ),
    ),
    )
  );

  late final _baseStatsTextWidget = Center(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Text(
      "Base Stats",
      style: TextStyle(
          color: pokemon.color,
          fontWeight: FontWeight.w700,
          fontSize: 14
      ),
    ),
    )
  );

  late final _descriptionWidget = Center(
    child: SizedBox(
      width: 312,
      child: Text(
        pokemon.description,
        style: TextStyle(
            fontSize: 10,
            color: AppColors.dark_gray,
            fontWeight: FontWeight.w400
        ),
      ),
    )
  );

  Widget baseStat(int number) {
    return Row(
        children: [
          Text(
            number.toString().padLeft(3, '0'),
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: AppColors.dark_gray
            ),
          ),
          SizedBox(width: 8),
          SizedBox(
              width: 231,
              height: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:
                LinearProgressIndicator(
                    value: number / 200,
                    backgroundColor: pokemon.color.withOpacity(0.2),
                    valueColor: AlwaysStoppedAnimation(pokemon.color)
                ),
              )
          )
        ]
    );
  }

  late final _baseStatsWidget = Center(
    child: SizedBox(
      width: 312,
      height: 100,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "HP",
                style: TextStyle(
                  fontSize: 10,
                  color: pokemon.color,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text(
                "ATK",
                style: TextStyle(
                    fontSize: 10,
                    color: pokemon.color,
                    fontWeight: FontWeight.w700
                ),
              ),
              Text(
                "DEF",
                style: TextStyle(
                    fontSize: 10,
                    color: pokemon.color,
                    fontWeight: FontWeight.w700
                ),
              ),
              Text(
                "SATK",
                style: TextStyle(
                    fontSize: 10,
                    color: pokemon.color,
                    fontWeight: FontWeight.w700
                ),
              ),
              Text(
                "SDEF",
                style: TextStyle(
                    fontSize: 10,
                    color: pokemon.color,
                    fontWeight: FontWeight.w700
                ),
              ),
              Text(
                "SPD",
                style: TextStyle(
                    fontSize: 10,
                    color: pokemon.color,
                    fontWeight: FontWeight.w700
                ),
              )
            ],
          ),
          SizedBox(width: 12),
          Container(width: 1, color: AppColors.light_gray),
          SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              baseStat(pokemon.baseStats.hp),
              baseStat(pokemon.baseStats.atk),
              baseStat(pokemon.baseStats.def),
              baseStat(pokemon.baseStats.sdef),
              baseStat(pokemon.baseStats.spd),
            ],
          )
        ],
      ),
    )
  );

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: pokemon.color,
       body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    height: 200, 
                    width: 360,
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/icons/ic_large_pokeball.png"),
          ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 352,
                      height: 412,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          ),
                          color: Colors.white
                      ),
                    )
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 16),
                  DetailTopBar(
                      name: pokemon.name,
                      number: pokemon.number
                  ),
                  SizedBox(height: 24),
                  _imageWidget,
                  _powerLineWidget,
                  _aboutTextWidget,
                  _physicalInfoWidget,
                  SizedBox(height: 16),
                  _descriptionWidget,
                  _baseStatsTextWidget,
                  _baseStatsWidget
                ],
              )
            ],
          )
      ),
    );
  }
}