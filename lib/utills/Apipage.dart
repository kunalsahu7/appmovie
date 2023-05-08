import 'dart:convert';

import 'package:http/http.dart' as http;

import '../screens/Home/modal/Modalpage.dart';


class ApiHelper{
  Future<HomeModel>  Apicall(String name)
  async {
    String link = "https://imdb8.p.rapidapi.com/auto-complete?q=$name";

    Uri uri = Uri.parse(link);

    var responce = await http.post(uri,headers: {
      "X-RapidAPI-Key": "8d808dcb09msha62d4c0e8e4b3cep10b91ajsn396f04a699a5",
      "X-RapidAPI-Host": "imdb8.p.rapidapi.com",
    });

    var json = jsonDecode(responce.body);
    HomeModel h1 = HomeModel.fromJson(json);
    return h1;
  }
}