import 'package:diadot/chatlist/page_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'actions.dart';
import 'package:diadot/source/json_source.dart';
import 'package:redux_thunk/redux_thunk.dart';

class ChatListPage extends StatelessWidget {
  final ScrollController controller = ScrollController();

  ChatListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Store<PageState> store = StoreProvider.of<PageState>(context);
    store.dispatch(loadRoomListThunkAction(store));
    return Scaffold(
      // body: Center(child: const CircularProgressIndicator()),
      body: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        const SliverAppBar(
          expandedHeight: 160.0,
          stretch: true,
          stretchTriggerOffset: 100,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('SliverAppBar'),
            background: FlutterLogo(),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: Text('$index', textScaleFactor: 5),
                ),
              );
            },
            childCount: 20,
          ),
        )
        // StoreConnector<PageState, List<RoomState>>(
        //     converter: (store) => store.state.roomDataList,
        //     builder: (context, vm) {
        //       if (vm.isEmpty) {
        //         return const Align(
        //             alignment: Alignment.topCenter,
        //             child: CircularProgressIndicator());
        //       } else {
        //         return ListView.builder(
        //             controller: controller,
        //             itemCount: vm.length,
        //             itemBuilder: (BuildContext context, int index) {
        //               return Container(
        //                 color: Color(0xffFFCE00),
        //                 height: 50,
        //                 child: Center(
        //                   child: Text(
        //                       "Text ${vm[index].roomName} ${vm[index].roomUniqId}"),
        //                 ),
        //               );
        //             });
        //       }
        //     }),
      ]),
    );
  }
}
