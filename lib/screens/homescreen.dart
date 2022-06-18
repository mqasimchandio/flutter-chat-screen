import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/page/ChatPage.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController( length: 3, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flash Chat⚡ ️"),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value){
              if (kDebugMode) {
                print(value);
              }
            },
            itemBuilder: (BuildContext context){
          return const[
            PopupMenuItem(child: Text("New Group"), value: "New Group"),
            PopupMenuItem(child: Text("New Broadcast"), value: "New Broadcast"),
            PopupMenuItem(child: Text("Linked Devices"), value: "Linked Devices"),
            PopupMenuItem(child: Text("Stared Messages"), value: "Stared Messages"),
            PopupMenuItem(child: Text("Settings"), value: "Settings"),


          ];
          },)
          // IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Calls",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text("Camera"),
          ChatPage(),
          Text("Calls"),
        ],
      ),
    );
  }
}

class SearchPage {}
