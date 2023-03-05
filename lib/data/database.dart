import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase{
  List toDoList=[];

  final _myBox= Hive.box('myBox');
  void createInitialData(){
    toDoList=[
      ["Do code ",false],
      ["Do Exercise",false],
    ];
  }
  void loadData(){
toDoList=_myBox.get("TODOLIST");
  }
  void updateDatabase(){
_myBox.put("TODOLIST",toDoList);
  }
}