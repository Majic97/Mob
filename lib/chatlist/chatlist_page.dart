import 'dart:ffi';
import 'dart:math';

import 'package:diadot/chatlist/page_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'actions.dart';
import 'package:diadot/source/colors.dart';

class ChatListPage extends StatefulWidget {
  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Store<PageState> store = StoreProvider.of<PageState>(context);
    return Container(
      color: CustomColors.easyWhite,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: CustomColors.appBarColor,
            pinned: true,
            stretch: true,
            expandedHeight: 50,
            stretchTriggerOffset: 60,
            onStretchTrigger: () {
              store.dispatch(loadRoomListThunkAction(store));
              return Future<void>.value();
            },
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsetsDirectional.only(start: 0, bottom: 16),
              title: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.search,
                          color: CustomColors.pureWhite, size: 25),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Chat list',
                        style: TextStyle(
                            color: CustomColors.pureWhite,
                            fontSize: 25,
                            fontFamily: "inder"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(
                        Icons.add,
                        color: CustomColors.pureWhite,
                        size: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          StoreConnector<PageState, List<RoomState>>(
            converter: (store) => store.state.roomDataList,
            builder: (context, vm) {
              if (vm.isEmpty) {
                return const SliverListForLoading();
              }
              return ChatSliverListWidget(
                vm: vm,
              );
            },
          )
        ],
      ),
    );
  }
}

class ChatSliverListWidget extends StatelessWidget {
  const ChatSliverListWidget({
    required this.vm,
    Key? key,
  }) : super(key: key);

  final List<RoomState> vm;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      if (index >= vm.length) {
        return Container(
          alignment: Alignment.center,
          color: CustomColors.pureWhite,
          height: 50,
        );
      }
      return SliverListItemWidget(
        vm: vm,
        index: index,
      );
    }, childCount: vm.length + 20));
  }
}

class SliverListItemWidget extends StatelessWidget {
  const SliverListItemWidget({Key? key, required this.vm, required this.index})
      : super(key: key);

  final List<RoomState> vm;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      color: CustomColors.pureWhite,
      child: Container(
        decoration: const BoxDecoration(
            color: CustomColors.listItemColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        height: 80,
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Text(
            "Id " + vm[index].roomName,
            style: const TextStyle(
                color: CustomColors.pureWhite,
                fontSize: 20,
                fontFamily: 'Inder'),
          ),
        ),
      ),
    );
  }
}

class SliverListForLoading extends StatelessWidget {
  const SliverListForLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, int index) {
          if (index == 0) {
            return Container(
                alignment: Alignment.center,
                color: Colors.white,
                height: 60,
                child: const CircularProgressIndicator());
          }
          return Container(
            alignment: Alignment.center,
            color: Colors.white,
            height: 60,
          );
        },
        childCount: 30,
      ),
    );
  }
}
