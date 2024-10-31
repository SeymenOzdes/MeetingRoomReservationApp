abstract class MeetingRoomState {
  const MeetingRoomState();
}

class MeetingRoomInitial extends MeetingRoomState {
  const MeetingRoomInitial();
}

class MeetingRoomDateSelected extends MeetingRoomState {
  final DateTime selectedDate;

  const MeetingRoomDateSelected(this.selectedDate);
}

class MeetingRoomDateFinish extends MeetingRoomState {
  const MeetingRoomDateFinish();
}
