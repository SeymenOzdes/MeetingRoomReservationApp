import 'package:flutter/material.dart';

class AddMeetingRoom extends StatefulWidget {
  const AddMeetingRoom({Key? key}) : super(key: key);

  @override
  _AddMeetingRoomState createState() => _AddMeetingRoomState();
}

class _AddMeetingRoomState extends State<AddMeetingRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randevu Al'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text('Hello, Stateful Widget!'),
          ],
        ),
      ),
    );
  }
}
