import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_booking_app/cubit/meeting_room_cubit.dart';
import 'package:meeting_booking_app/cubit/meeting_room_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final DateTime selectedDate;

  @override
  void initState() {
    selectedDate = DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<MeetingRoomCubit, MeetingRoomState>(
        listener: (context, state) {
          if (state is MeetingRoomDateSelected) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Seçilen Tarih: ${state.selectedDate}")),
            );
          }
        },
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Ana Sayfa"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          context.read<MeetingRoomCubit>().selectDate(context, selectedDate)
        }, // Navigator.pushNamed(context, "/addMeetingRoom")
        child: const Icon(Icons.add),
      ),
    );
  }
}
