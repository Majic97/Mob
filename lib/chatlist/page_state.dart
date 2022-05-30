import 'package:flutter/cupertino.dart';

class RoomState {
  int roomUniqId;
  String roomName;
  String currency;
  double total;
  int messageCount;

  RoomState(
      {required this.roomUniqId,
      required this.roomName,
      required this.currency,
      required this.total,
      required this.messageCount});
}

class PageState {
  List<RoomState> _RoomDataList = [];

  PageState();

  void AddNewRoomState(List<RoomState> value) {
    _RoomDataList = value;
  }

  void CleanState() {
    _RoomDataList.clear();
  }

  List<RoomState> get roomDataList => _RoomDataList;
}
