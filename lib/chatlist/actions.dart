import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'page_state.dart';
import 'package:diadot/source/json_source.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

class LoadRoomList {
  LoadRoomList();
}

class SetListViewWidget {
  final List<RoomState> RoomListData;

  SetListViewWidget({required this.RoomListData});
}

// ignore: prefer_function_declarations_over_variables
ThunkAction loadRoomListThunkAction = (Store store) async {
  store.dispatch(LoadRoomList());

  await Future.delayed(const Duration(seconds: 4));
  store.dispatch(
      SetListViewWidget(RoomListData: parseJsonToRoomListData(GetRoomList)));
};

List<RoomState> parseJsonToRoomListData(String jsonData) {
  List<RoomState> RoomListData = [];
  RoomState Roomitem;
  late int UserUniqId;
  Map<String, dynamic> ParsedJson = jsonDecode(jsonData);

  UserUniqId = ParsedJson['UserUniqId'];
  List<dynamic> rooms = ParsedJson['rooms'];

  for (Map<String, dynamic> item in rooms) {
    int RoomId = item['roomUniqId'];
    String RoomName = item['RoomName'];
    String Currency = item['Currency'];
    double Total = item['total'].toDouble();
    int MessageCount = item['messageCount'];

    RoomListData.add(RoomState(
        roomUniqId: RoomId,
        roomName: RoomName,
        currency: Currency,
        total: Total,
        messageCount: MessageCount));
  }

  return RoomListData;
}
