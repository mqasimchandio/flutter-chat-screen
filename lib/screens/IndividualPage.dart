
import 'package:flutter/material.dart';
import 'package:flash_chat/Model/ChatModel.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:emoji_picker/emoji_picker.dart' show EmojiPicker;

class IndividualPage extends StatefulWidget {
  const IndividualPage({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 80,
        titleSpacing: 2,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_back,
                size: 23,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
                child: SvgPicture.asset(
                  widget.chatModel.isGroup
                      ? "assets/groups.svg"
                      : "assets/person.svg",
                  color: Colors.white,
                  height: 33,
                  width: 33,
                ),
              ),
            ],
          ),
        ),
        title: Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.chatModel.name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Last seen today at 9:16",
                style: TextStyle(
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          PopupMenuButton<String>(onSelected: (value) {
            // print(value);
          }, itemBuilder: (BuildContext context) {
            return const [
              PopupMenuItem(child: Text("View Contact"), value: "View Contact"),
              PopupMenuItem(
                  child: Text("Media, Links, and docs"),
                  value: "Media, Links, and docs"),
              PopupMenuItem(
                  child: Text("Search message"), value: "Search message"),
              PopupMenuItem(child: Text("Wallpaper"), value: "Wallpaper"),
              PopupMenuItem(child: Text("More"), value: "More"),
            ];
          }),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 45,
                    child: Card(
                      margin:
                          const EdgeInsets.only(left: 2, right: 1, bottom: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          23,
                        ),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        minLines: 1,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type a message",
                            prefix: IconButton(
                                icon: const Icon(
                                  Icons.emoji_emotions,
                                  color: Colors.blue,
                                ),
                                onPressed: () {}),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.attach_file),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.camera_alt),
                                ),
                              ],
                            ),
                            contentPadding: const EdgeInsets.all(5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      // radius: 23,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
