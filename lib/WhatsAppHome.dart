import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/chat.dart';
import 'package:whatsappclone/pages/status.dart';
import 'package:whatsappclone/pages/call.dart';
import 'package:whatsappclone/pages/camera.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white12,
          ),
        ),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(
              text: "Chats",
            ),
            new Tab(
              text: "Status",
            ),
            new Tab(
              text: "Calls",
            ),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10)),
          Icon(Icons.more_vert),
          Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10)),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message),
        onPressed: () => print("open chats"),
      ),
    );
  }
}
