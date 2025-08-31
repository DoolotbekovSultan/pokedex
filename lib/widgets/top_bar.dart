import 'package:flutter/material.dart';
import 'package:pokedex/app_colors.dart';

class TopBar extends StatelessWidget {

  const TopBar({super.key});

   static final _iconWidget = Image.asset("assets/icons/ic_pokedex.png");

   static const _titleWidget = Text(
     "Pokédex",
     style: TextStyle(
         color: AppColors.dark_gray,
         fontSize: 24,
         fontWeight: FontWeight.w700
     ),
   );

   static const _sortWidget = Row(
     crossAxisAlignment: CrossAxisAlignment.center,
     children: [
       Text(
         "#",
         style: TextStyle(
           color: AppColors.dark_gray,
           fontSize: 10,
           fontWeight: FontWeight.w500
         ),
       ),
       Icon(
         Icons.arrow_downward,
         size: 16,
       )
     ],
   );

  @override
  Widget build(BuildContext context) {
    return
    SizedBox(
      width: 328,
      height: 32,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _iconWidget,
                SizedBox(width: 16),
                _titleWidget
              ],
            ),
            _sortWidget
          ],
        ),
      ),
    );
  }
}