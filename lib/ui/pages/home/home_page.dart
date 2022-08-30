import 'package:flutter/material.dart';
import 'package:valorant/core/controller/home/player_controller.dart';
import 'package:valorant/ui/components/cards/card.dart';
import 'package:valorant/ui/components/home/item_card.dart';
import 'package:valorant/ui/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../../../core/models/home/player_model.dart';
import '../../components/home/category.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PlayerController controller = PlayerController();
  int selectedIndex = 0;
  late Player player;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColors.bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              Center(
                child: Image.asset(
                  'res/images/logo.png',
                  width: 88,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Choose your\nawesome agent',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 33,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                ),
                child: Categories(),
              ),
              GridView.builder(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 30,
                ),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: players.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0.40,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  player: players[index],
                  onPress: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(
                        player: players[index],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 55),
            ],
          ),
        ));
  }
}
