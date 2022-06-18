import 'package:flash_chat/screens/IndividualPage.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/Model/ChatModel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard( {Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (contex) => IndividualPage(chatModel: chatModel,)));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              child:  SvgPicture.asset(
                chatModel.isGroup? "assets/groups.svg" : "assets/person.svg",
                color: Colors.white,
                height: 33,
                width: 33,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              chatModel.name,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
            subtitle: Row(
              children: [
                const Icon(Icons.done_all, color: Colors.green, size: 15),
                const SizedBox(width: 3),
                Text(
                  chatModel.currentMessage,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
            trailing:  Text(
              chatModel.time,
              style: const TextStyle(color: Colors.blueGrey),
            ),
          ),
          // const Divider(thickness: 0)
        ],
      ),
    );
  }
}



//
//
// class CustomCard extends StatefulWidget {
//   CustomCard( {Key? key, required this.ChatModel}) : super(key: key);
//   final ChatModel chatModel;
//   @override
//   State<CustomCard> createState() => _CustomCardState();
// }
// class _CustomCardState extends State<CustomCard> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {},
//       child: Column(
//         children: [
//           ListTile(
//             leading: CircleAvatar(
//               radius: 25,
//               child: SvgPicture.asset(
//                 "assets/groups.svg",
//                 color: Colors.white,
//                 height: 33,
//                 width: 33,
//               ),
//               backgroundColor: Colors.blueGrey,
//             ),
//             title: Text(
//               chatModel.name,
//               style: const TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.w900,
//               ),
//             ),
//             subtitle: Row(
//               children: const [
//                 Icon(Icons.done_all, color: Colors.green, size: 15),
//                 SizedBox(width: 3),
//                 Text(
//                   "Hi Qasim",
//                   style: TextStyle(fontSize: 12),
//                 ),
//               ],
//             ),
//             trailing: const Text(
//               "18:04",
//               style: TextStyle(color: Colors.blueGrey),
//             ),
//           ),
//           // const Divider(thickness: 0)
//         ],
//       ),
//     );
//   }
// }
