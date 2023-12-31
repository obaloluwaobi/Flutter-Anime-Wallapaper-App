import 'package:food_recipe/models/recipe.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

// pls note that you have to create your own api key in rapid api

class HttpHelper {

  Future <List<WallpaperModel>>  getpics() async {

    int page = 10;

    final result  = await http.get(
        Uri.https('premium-anime-mobile-wallpapers-illustrations.p.rapidapi.com','/rapidHandler/boy',{ 'page': '$page', 'sensitivity': '0', 'quality': '1'}),
        headers: {
          'X-RapidAPI-Key': 'Add your Api key here',
          'X-RapidAPI-Host': 'premium-anime-mobile-wallpapers-illustrations.p.rapidapi.com'
        },);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      //provide a type argument to the map method to avoid type

      List<WallpaperModel> pizzas =
      jsonResponse.map<WallpaperModel>((i) =>
          WallpaperModel.fromMap(i)).toList();
      return pizzas;

    } else  {
    return [];
    }

  }}

