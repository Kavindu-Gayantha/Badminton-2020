import 'package:firebase_database/firebase_database.dart';

class Board{
  String key,playername;

  Board(this.playername);

  Board.fromSnapshot(DataSnapshot snapshot):
    key = snapshot.key,
    playername = snapshot.value["playername"];
    // body = snapshot.value["body"];

    toJson(){
      return{
        "name": playername,
       
      };
    }
}