import 'package:flutter/material.dart';

class ChatModel {
  String name = "";
  String message = "";
  String time = "";
  String avatarurl = "";

  ChatModel(
      {required this.message,
      required this.name,
      required this.avatarurl,
      required this.time});
}
