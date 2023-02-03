import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("listscreen"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: ElevatedButton(
            child: Text('open dialogue'),
            onPressed: (){
              showDialog(context: context, builder: (BuildContext contex){
                return CustomAlert();
              });
            },
          ),
        ),
      ),

    ),
    );
  }
}
class CustomAlert extends StatelessWidget {
  const CustomAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Expanded(child: Container(
              color: Colors.white70,
              child: Icon(Icons.wallet_giftcard_outlined,size: 40,),
            ),
            ),
            Expanded(
                child: Container(
                  color: Colors.redAccent,
                  child: SizedBox.expand(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "title",
                          style: TextStyle(color: Colors.white) ,
                        )
                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

