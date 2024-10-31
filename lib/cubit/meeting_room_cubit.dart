import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meeting_booking_app/cubit/meeting_room_state.dart';

class MeetingRoomCubit extends Cubit<MeetingRoomState> {
  MeetingRoomCubit() : super(const MeetingRoomInitial());

  // Functions are written below
  void selectDate(BuildContext context, DateTime? selectedDate) {
    showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2025),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    ).then(
      (pickedDate) {
        if (pickedDate != null) {
          emit(MeetingRoomDateSelected(pickedDate));
        }
      },
    );
  }
}
