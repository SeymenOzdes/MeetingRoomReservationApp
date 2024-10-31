import 'package:flutter/material.dart';

class AddMeetingRoom extends StatefulWidget {
  const AddMeetingRoom({super.key});

  @override
  _AddMeetingRoomState createState() => _AddMeetingRoomState();
}

class _AddMeetingRoomState extends State<AddMeetingRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Randevu Al',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 40),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Tarih seç'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
