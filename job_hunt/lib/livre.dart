import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Livre {
  static String baseUrl = "https://jsonplaceholder.typicode.com";
  static Future<List> getAllLivre() async {
    try {
      var res = await http.get(Uri.parse(baseUrl + '/posts'));
      if (res.statusCode == 200) {
        return jsonDecode(res.body);
      } else {
        return Future.error("erreur serveur");
      }
    } catch (err) {
      return Future.error(err);
    }
  }

  static Login(BuildContext context, login, password) async {
    try {
      var connection = {"email": login, "password": password};
      var res = await http.post(Uri.parse("https://reqres.in/api/login"),
          body: connection);
      if (res.statusCode == 200) {
        Navigator.pushNamed(context, '/liste');
      } 
    } catch (err) {
      return Future.error(err);
    }
  }

 
}
