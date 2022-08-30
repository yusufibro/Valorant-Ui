import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:valorant/ui/components/ability.dart';
import 'package:valorant/ui/theme/colors.dart';

import '../../../core/models/home/player_model.dart';

class DetailPage extends StatefulWidget {
  final Player player;
  DetailPage({Key? key, required this.player}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: "${widget.player.id}",
                  child: Container(
                    height: 256,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: widget.player.color,
                      image: DecorationImage(
                        alignment: Alignment.topLeft,
                        opacity: 180,
                        fit: BoxFit.cover,
                        image: AssetImage(
                          widget.player.image,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 18),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                      ),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.player.name.toUpperCase(),
                            style: GoogleFonts.poppins(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xFF1F2052),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                widget.player.role,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 40,
                      ),
                      child: Image.asset(
                        widget.player.image,
                        width: 200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'BIOGRAPHY',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.player.description,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'SPECIAL ABILITIES',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Ability(
                    images: 'res/images/ability_1.png',
                    title1: 'SHROUDED',
                    title2: 'Shadow walk & see its range indicator ',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Ability(
                    images: 'res/images/ability_2.png',
                    title1: 'PARANOIA',
                    title2: 'Shadow projectile & blinden enemy ',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Ability(
                    images: 'res/images/ability_3.png',
                    title1: 'PARANOIA',
                    title2: 'Tectical map to teleporting all areas ',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
