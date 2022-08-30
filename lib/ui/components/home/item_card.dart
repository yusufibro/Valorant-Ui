import 'package:flutter/material.dart';

import '../../../core/models/home/player_model.dart';
import '../cards/card.dart';

class ItemCard extends StatelessWidget {
  final Player player;
  VoidCallback onPress;
  ItemCard({Key? key, required this.player, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: InkWell(
            onTap: onPress,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                CardsV(
                  color1: player.color,
                  color2: player.color2,
                ),
                Positioned(
                  right: 1,
                  bottom: 0,
                  child: Hero(
                    tag: "${player.id}",
                    child: Image.asset(
                      player.image,
                      width: 120,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 27,
        ),
      ],
    );
  }
}
