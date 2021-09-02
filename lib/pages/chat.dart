import 'package:flutter/material.dart';
import 'chatmodel.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModel> dummy = [
    new ChatModel(
        message: "Helloooo",
        name: "Atharva",
        avatarurl: "avatar.jpeg",
        time: "15:30"),
    new ChatModel(
        message: "Helloooo",
        name: "Atharva",
        avatarurl: "avatar.jpeg",
        time: "15:30"),
    new ChatModel(
        message: "Helloooo",
        name: "Atharva",
        avatarurl: "avatar.jpeg",
        time: "15:30"),
    new ChatModel(
        message: "Helloooo",
        name: "Atharva",
        avatarurl: "avatar.jpeg",
        time: "15:30"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummy.length,
      itemBuilder: (context, i) {
        return Column(
          children: <Widget>[
            Divider(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(dummy[i].avatarurl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    dummy[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dummy[i].time,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  dummy[i].message,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
