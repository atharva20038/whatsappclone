import 'package:flutter/material.dart';
import 'WhatsAppHome.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WhatsAppHome(),
      title: "WhatsApp",
    );
  }
}
