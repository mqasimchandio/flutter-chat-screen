import 'package:flutter/material.dart';
class ChatModel{
  late String name;
  late String icon;
  late bool isGroup;
  late String time;
  late String currentMessage;
  ChatModel(
  {required this.name,required this.icon, required this.isGroup, required this.time,required this.currentMessage});
}