import 'package:flutter/material.dart';

var kCartegories = [
  ["Sports", "assets/images/football-icon.png", Colors.red[900]],
  ["Entertainment", "assets/images/cinema-icon.png", Colors.yellow[900]],
  ["Bussiness", "assets/images/bussiness-icon.png", Colors.blue[800]],
  ["Science", "assets/images/science-icon.png", Colors.teal[900]]
];

var kCategoriesName = ["sports", "entertainment", "bussiness", "science"];

String apiLink(String category, {String country}) =>
    "http://newsapi.org/v2/top-headlines?country=${country == null ? "us" : country}&category=${category == null ? "bussiness" : category}&apiKey=fff147fd795b46078be6cb160d355906";
