import 'package:flutter/material.dart';

String GetUsersJson = '''{
  "users": [
    {
      "UserUniqId":1,
      "UserName":"Mike",
      "UserNumber":"+18549304853"
    },
    {
      "UserUniqId":2,
      "UserName":"Sasha",
      "UserNumber":"+78889930094"
    },
    {
      "UserUniqId":3,
      "UserName":"Alex",
      "UserNumber":"+992347748020312"
    },
    {
      "UserUniqId":4,
      "UserName":"Rustam",
      "UserNumber":"+899930283423"
    },
    {
      "UserUniqId":5,
      "UserName":"Otto",
      "UserNumber":"+3924234522345"
    },
  ]
}''';

String GetRoomList = '''{
  "UserUniqId":5,
  "rooms":[
    {"roomUniqId":2, "RoomName":"Second Room","Currency":"RUB","total": 12299,"messageCount":3},
    {"roomUniqId":3, "RoomName":"Third Room","Currency":"EUR","total": 12299,"messageCount":3},
    {"roomUniqId":4, "RoomName":"Fourth Room","Currency":"RUB","total": 12299,"messageCount":3}
  ]
}
''';

String GetHistoryId1Json = '''{
  "roomUniqId":1,
  "selectedDate":"2022-05-17",
  "transactions":[
    { "rowId":4,
      "operation":"2314",
      "result":"6514",
      "DateSuggestion":"2022-05-16",
      "TimeSuggestion":"06:08:23",
      "DateAcception":"2022-05-17",
      "TimeAcception":"10:08:23",
      "AuthorSuggesterId":"Otto",
      "AuthorAccepterId":"Mike"
    }
  ]
}''';

String GetHistoryId2Json = '''{
  "roomUniqId":1,
  "selectedDate":"2022-05-18",
  "transactions":[
    { "rowId":5,
      "operation":"1222",
      "result":"7736",
      "DateSuggestion":"2022-05-17",
      "TimeSuggestion":"06:07:24",
      "DateAcception":"2022-05-18",
      "TimeAcception":"11:07:24",
      "AuthorSuggesterId":"Mike",
      "AuthorAccepterId":"Sasha"
    }
  ]
}''';

String GetHistoryId3Json = '''{
  "roomUniqId":1,
  "selectedDate":"2022-05-19",
  "transactions":[
    { "rowId":6,
      "operation":"4563",
      "result":"12299",
      "DateSuggestion":"2022-05-18",
      "TimeSuggestion":"06:08:24",
      "DateAcception":"2022-05-19",
      "TimeAcception":"18:08:24",
      "AuthorSuggesterId":"Sasha",
      "AuthorAccepterId":"Mike"
    }
  ]
}''';

String GetMessagesJson = '''{
  "messagesCount":3,
  "Messages":[
    { "messageId":1,
      "operation":"3222",
      "DateSuggestion":"2022-06-13",
      "TimeSuggestion":"09:15:22",
      "AuthorName":"Mike",
      "TransactionDescription":"Add"
    },
    { "messageId":2,
      "operation":"-1000",
      "DateSuggestion":"2022-06-14",
      "TimeSuggestion":"09:15:23",
      "AuthorName":"Otto",
      "TransactionDescription":"add"
    },
    { "messageId":3,
      "operation":"2222",
      "DateSuggestion":"2022-06-15",
      "TimeSuggestion":"09:15:24",
      "AuthorName":"Otto",
      "TransactionDescription":"add"}
  ]
}''';

String RoomDescription1Json = '''{
  "RoomUniqId":1,
  "RoomName":"First Room",
  "RoomDescription":"The first room",
  "Currency":"USD",
  "users":[
    { "UserUniqId":1,
      "UserName":"Mike",
      "RoomAdmin":true,
      "TeamId":"firstteam",
      "ReductRight":true,
      "IdInTeam":1},
    { "UserUniqId":2,
      "UserName":"Sasha",
      "RoomAdmin":true,
      "TeamId":"secondteam",
      "ReductRight":true,
      "IdInTeam":1},
    { "UserUniqId":3,
      "UserName":"Alex",
      "RoomAdmin":false,
      "TeamId":"firstteam",
      "ReductRight":false,
      "IdInTeam":2}
  ]
}''';

String RoomDescription2Json = '''{
  "RoomUniqId":2,
  "RoomName":"Second Room",
  "RoomDescription":"The second room",
  "Currency":"RUB",
  "users":[
    { "UserUniqId":1,
      "UserName":"Mike",
      "RoomAdmin":true,
      "TeamId":"firstteam",
      "ReductRight":true,
      "IdInTeam":1},
    { "UserUniqId":5,
      "UserName":"Otto",
      "RoomAdmin":true,
      "TeamId":"secondteam",
      "ReductRight":true,
      "IdInTeam":1}
  ]
}
''';

String RoomDescription3Json = '''{
  "RoomUniqId":3,
  "RoomName":"Third Room",
  "RoomDescription":"The third room",
  "Currency":"EUR",
  "users":[
    { "UserUniqId":3,
      "UserName":"Alex",
      "RoomAdmin":false,
      "TeamId":"secondteam",
      "ReductRight":true,
      "IdInTeam":2},
    { "UserUniqId":4,
      "UserName":"Rustam",
      "RoomAdmin":true,
      "TeamId":"secondteam",
      "ReductRight":true,
      "IdInTeam":1},
    { "UserUniqId":5,
      "UserName":"Otto",
      "RoomAdmin":true,
      "TeamId":"firstteam",
      "ReductRight":false,
      "IdInTeam":1}
  ]
}
''';

String RoomDescription4Json = '''{
  "RoomUniqId":4,
  "RoomName":"Fourth Room",
  "RoomDescription":"The fourth room",
  "Currency":"RUB",
  "users":[
    { "UserUniqId":2,
      "UserName":"Sasha",
      "RoomAdmin":true,
      "TeamId":"secondteam",
      "ReductRight":true,
      "IdInTeam":1},
    { "UserUniqId":5,
      "UserName":"Otto",
      "RoomAdmin":true,
      "TeamId":"firstteam",
      "ReductRight":true,
      "IdInTeam":1}
  ]
}''';
