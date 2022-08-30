// class Player {
//   String? uuid;
//   String? displayName;
//   bool? isHiddenIfNotOwned;
//   String? themeUuid;
//   String? displayIcon;
//   String? smallArt;
//   String? wideArt;
//   String? largeArt;
//   String? assetPath;

//   Player(
//       {this.uuid,
//       this.displayName,
//       this.isHiddenIfNotOwned,
//       this.themeUuid,
//       this.displayIcon,
//       this.smallArt,
//       this.wideArt,
//       this.largeArt,
//       this.assetPath});

//   Player.fromJson(Map<String, dynamic> json) {
//     uuid = json['uuid'];
//     displayName = json['displayName'];
//     isHiddenIfNotOwned = json['isHiddenIfNotOwned'];
//     themeUuid = json['themeUuid'];
//     displayIcon = json['displayIcon'];
//     smallArt = json['smallArt'];
//     wideArt = json['wideArt'];
//     largeArt = json['largeArt'];
//     assetPath = json['assetPath'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['uuid'] = this.uuid;
//     data['displayName'] = this.displayName;
//     data['isHiddenIfNotOwned'] = this.isHiddenIfNotOwned;
//     data['themeUuid'] = this.themeUuid;
//     data['displayIcon'] = this.displayIcon;
//     data['smallArt'] = this.smallArt;
//     data['wideArt'] = this.wideArt;
//     data['largeArt'] = this.largeArt;
//     data['assetPath'] = this.assetPath;
//     return data;
//   }
// }

import 'package:flutter/material.dart';

class Player {
  final String name, role, image, description;
  final int id;
  final Color color;
  final Color color2;

  Player(
      {required this.name,
      required this.role,
      required this.image,
      required this.description,
      required this.id,
      required this.color,
      required this.color2});
}

List<Player> players = [
  Player(
      id: 1,
      name: 'Omen',
      role: 'Controller',
      image: 'res/images/omen.png',
      description:
          'Omen (codename Wraith) is an Agent & Radiant in VALORANT. Omen is described as a shadow hunter, whose origins are completely unknown. Omen hunts in the shadows. He renders enemies blind, teleports across the field, then lets paranoia take hold as his foe scrambles to learn where he might strike next .',
      color: Color(0xff5B5DB2),
      color2: Color(0xffCCCDFA)),
  Player(
    id: 2,
    name: 'Viper',
    role: 'Controller',
    image: 'res/images/viper.png',
    description:
        'Viper is a VALORANT agent who deals with poison and acid, burning down and suffocating her enemies. She uses fuel to activate her powerful abilities Poison Cloud and Toxic Screen to melt passing targets and block vision. The fuel gauge recharges over time, allowing Viper to control areas for extended time.',
    color: Color(0xff02772D),
    color2: Color(0xffF9FFFB),
  ),
  Player(
    id: 3,
    name: 'Raze',
    role: 'Duelists',
    image: 'res/images/raze.png',
    description:
        'Raze is a Valorant character that plays super aggressively, dealing heavy damage and thrives off of it. This means she will be playing an entry every single time and if this is your style then Raze is for you!',
    color: Color(0xffE95017),
    color2: Color(0xffBDB9B8),
  ),
  Player(
    id: 4,
    name: 'Phonix',
    role: 'Duelists',
    image: 'res/images/phonix.png',
    description:
        'Phoenix is an offensive VALORANT agent, who specializes in hunting down enemies, while crippling their ability to fire back. The Blaze ability creates walls that blocks vision and deals damage, allowing Phoenix to sneak past defended open areas, while Curveball blinds enemies, even if they are hinding behind corners.',
    color: Color.fromARGB(255, 214, 66, 66),
    color2: Color(0xffC4C4C4),
  ),
  Player(
      id: 5,
      name: 'Jett',
      role: 'Duelists',
      image: 'res/images/jett_.png',
      description:
          'Jett is a playable Agent & Radiant in Valorant and the tenth of the Valorant Protocol . Representing her home country of South Korea, Jett is agile and evasive fighting style lets her take risks no one else can. She runs circles around every skirmish, cutting enemies before they even know what hit them',
      color: Color.fromARGB(255, 23, 132, 233),
      color2: Color(0xffBDB9B8)),
  Player(
    id: 6,
    name: 'Breach',
    role: 'Initiators',
    image: 'res/images/breach.png',
    description:
        'Breach is an Agent in VALORANT . Breach fires powerful, targeted kinetic blasts to aggressively clear a path through enemy ground. The damage and disruption he inflicts ensures no fight is ever fair. Breach is main gimmick is the ability to use all of his abilities through the geometry of the map,whether it is through walls, roofs, or terrain.',
    color: Color.fromARGB(255, 218, 235, 41),
    color2: Color(0xffF9FFFB),
  ),
];
