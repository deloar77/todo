

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class toDoListScreen extends StatefulWidget {
  const toDoListScreen({Key? key}) : super(key: key);

  @override
  State<toDoListScreen> createState() => _toDoListScreenState();
}

class _toDoListScreenState extends State<toDoListScreen> {
  List<String> todos = [];
  TextEditingController todoNameEditingController = TextEditingController();
  TextEditingController updatetodoNameEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("todo app"),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("todo name"),
                    SizedBox(height: 16,),
                    TextField(
                      controller: todoNameEditingController,
                      decoration: const InputDecoration(
                        hintText: 'write your todo',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16,),
                    ElevatedButton(onPressed: (){
                      if (todoNameEditingController.text.trim().isNotEmpty) {
                        todos.add(todoNameEditingController.text);
                        todoNameEditingController.text = '';
                        setState(() {

                        });

                        Navigator.pop(context);
                      }
                    }, child: const Text("add todo"))
                  ],
                ),
              );
            });

          }, label: const Text("Add")),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context,index){
            final String todo = todos[(todos.length-1)-index];
            return Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
                  child: Row(
                    children: [
                      Text(todo,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,

                      ),),
                      Spacer(),
                      IconButton(onPressed: (){
                        todos.removeAt((todos.length-1)-index);
                        setState(() {

                        });
                      }, icon: Icon(Icons.delete_forever_outlined,color: Colors.teal,)),
                      IconButton(onPressed: (){
                        updatetodoNameEditingController.text = todo;
                        showModalBottomSheet(context: context, builder: (context){
                          return Padding(padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("update your todo"),
                                const SizedBox(height: 16,),
                                TextField(
                                  controller: updatetodoNameEditingController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(height: 16,),
                                ElevatedButton(onPressed: (){
                                  if (updatetodoNameEditingController.text.trim().isNotEmpty){
                                    todos[(todos.length-1)-index] = updatetodoNameEditingController.text.trim();
                                    setState(() {

                                    });
                                    Navigator.pop(context);
                                  }


                                }, child: const Text("update your todo"))
                              ],
                            ),

                          );

                        });

                      }, icon: Icon(Icons.edit,color: Colors.blue,))
                    ],
                  ),
                ));

          }),
    );
  }
}
