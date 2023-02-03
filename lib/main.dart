import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listview1/Screens/home_page.dart';
import 'package:listview1/Screens/list_screen.dart';
import 'package:listview1/Screens/todoList.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "Dashboard",
     theme: ThemeData(
       primaryColor: Colors.teal,
       primarySwatch: Colors.teal,
     ),
     initialRoute: '/',
     routes: {
       '/':(context)=>HomePage(),
       '/ListView':(context)=>ListScreen(),
       '/todolist':(context)=>toDoListScreen(),
     },
   );
  }


}