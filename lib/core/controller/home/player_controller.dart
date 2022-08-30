import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../../models/home/player_model.dart';

class PlayerController {

  Future getPlayer() async {
    String apiUrl = "https://valorant-api.com/v1/playercards";

    var resApi = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(resApi.body);
    // var playerData = (jsonObject as Map<String, dynamic>)['data'];
    List<Player> players = [];

    return players;
  }

}