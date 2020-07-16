import 'package:flutter/material.dart';
import 'package:libmot/provider/appState.dart';
import 'package:provider/provider.dart';



class Test extends StatefulWidget {

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  AppState appState;
  bool selected =  false;
//bool  appState.chairs[id].selected



  @override
  Widget build(BuildContext context) {
    appState = Provider.of<AppState>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Your selected Seats", style: TextStyle(color: Colors.black),),
        ),
        body: Column(
          children: <Widget>[

          Container(
            height: MediaQuery.of(context).size.height/2,
            child: ListView.builder(
              itemCount: appState.selected.length,
                itemBuilder: (context , index){
                  return Container(
                      margin: EdgeInsets.all(20),
                      child: Text("You have selected seat number ${(appState.selected[index].id + 1).toString()}", style: TextStyle(fontSize: 20),)

                  );
                }

            ),
          )

          ],
        )

    );
  }






}

