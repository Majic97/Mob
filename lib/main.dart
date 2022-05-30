import 'package:diadot/chatlist/reducers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'chatlist/chatlist_page.dart';
import 'chatlist/page_state.dart';
import 'package:diadot/source/json_source.dart';
import 'dart:convert';
import 'package:redux/redux.dart';

void main() {
  final Store<PageState> store = Store(reducer, initialState: PageState());
  runApp(StoreProvider(store: store, child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatListPage(),
    );
  }
}
