
import 'dart:convert';
import 'package:flutter/material.dart';

class ZZHomeCategoryModel {
  ZZHomeCategoryModel({
    this.id,
    this.title,
    this.color,
  });

  String id;
  String title;
  String color;
  Color tColor;

   ZZHomeCategoryModel.fromJson(Map<String, dynamic> json) {
      id = json["id"];
      title = json["title"];
      color = json["color"];

      final colorInt = int.parse(color, radix: 16);
      tColor = Color(colorInt | 0xff000000);
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "color": color,
  };
}