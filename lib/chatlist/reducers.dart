import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'actions.dart';
import 'page_state.dart';

PageState reducer(PageState state, dynamic action) {
  state.AddNewRoomState(listViewReducer(state.roomDataList, action));
  return state;
}

Reducer<List<RoomState>> listViewReducer = combineReducers([
  TypedReducer<List<RoomState>, SetListViewWidget>(_setListViewReducer),
  TypedReducer<List<RoomState>, LoadRoomList>(_loadListViewReducer)
]);

class TypeReducer {}

List<RoomState> _setListViewReducer(
    List<RoomState> RoomListData, SetListViewWidget action) {
  return action.RoomListData;
}

List<RoomState> _loadListViewReducer(
    List<RoomState> RoomListData, LoadRoomList action) {
  RoomListData.clear();
  return RoomListData;
}
