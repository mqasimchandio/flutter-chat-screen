import 'package:flash_chat/Model/ChatModel.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/CustomUI/CustomCard.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats= [
    ChatModel(name: "Qasim Chandio", icon: "person.svg", isGroup: false, time: "4:38", currentMessage: "Hello bhai"),
    ChatModel(name: "Ahadullah", icon: "person.svg", isGroup: false, time: "9:28", currentMessage: "Preparation of paper"),
    ChatModel(name: "18K-Batch", icon: "groups.svg", isGroup: true, time: "2:45", currentMessage: "Finals"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context,index) => CustomCard( chatModel: chats[index] ),
      ),
    );
  }
}
