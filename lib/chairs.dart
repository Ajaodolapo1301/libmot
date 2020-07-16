import 'package:flutter/material.dart';
import 'package:libmot/provider/appState.dart';
import 'package:libmot/test.dart';
import 'package:provider/provider.dart';



class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

AppState appState;
final _scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
  appState = Provider.of<AppState>(context);
    return Scaffold(

      key: _scaffoldKey,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Select Seat(s)", style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: <Widget>[

    SizedBox(height: 20,),
          Center(
            child: Material(
              borderRadius: BorderRadius.circular(15),
              elevation: 5.0,
                child: Container(
              height: MediaQuery.of(context).size.height/ 2,
              width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[




                            Spacer(),










//seat TWO

                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[1].available;

                                av ?   add(appState.chairs[1]) : null;

                                av ? press(appState.chairs[1].id) : null;

                          av ?  setState(() {
                                  appState.chairs[1].selected =  !appState.chairs[1].selected;
                                }) : null;
                        print(av);
                                print( appState.chairs[1].selected);

                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[1].available  ?  press(appState.chairs[1].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[1].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[1].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),
                            SizedBox(width: 45,),







//Seat ONE

                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[0].available;


                                av ?   add(appState.chairs[appState.chairs[0].id]) : null;

                                av ?    setState(() {
                                  // ignore: unnecessary_statements
                                  appState.chairs[0].selected !=  appState.chairs[0].selected;
                                }) : null;

                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                      height: 50,
                                      color:  appState.chairs[0].selected ? Colors.green : Colors.white,
                                      width: 50,
                                      child:  appState.chairs[0].available ? press(appState.chairs[0].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[0].id + 1 ).toString(), style: TextStyle(color: appState.chairs[0].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: <Widget>[



//SEAT THREE

                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[2].available;


                                av ?   add(appState.chairs[appState.chairs[2].id]) : null;

                                av ?    setState(() {
                                  // ignore: unnecessary_statements
                                  appState.chairs[2].selected !=  appState.chairs[2].selected;
                                }) : null;

                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                      height: 50,
                                      color:  appState.chairs[2].selected ? Colors.green : Colors.white,
                                      width: 50,
                                      child:  appState.chairs[2].available ? press(appState.chairs[2].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[2].id + 1 ).toString(), style: TextStyle(color: appState.chairs[2].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),
                            SizedBox(width: 45,),

// SEAT FOUR
                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[3].available;

                                av ?   add(appState.chairs[3]) : null;

                                av ? press(appState.chairs[3].id) : null;

                                av ?  setState(() {
                                  appState.chairs[3].selected =  !appState.chairs[3].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[3].available  ?  press(appState.chairs[3].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[3].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[3].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),
                            SizedBox(width: 35,),


//Seat FIVE
                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[4].available;

                                av ?   add(appState.chairs[4]) : null;

                                av ? press(appState.chairs[4].id) : null;

                                av ?  setState(() {
                                  appState.chairs[4].selected =  !appState.chairs[4].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[4].available  ?  press(appState.chairs[4].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[4].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[4].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),



                          ],
                        ),

                        SizedBox(height: 30,),
                        Row(
                          children: <Widget>[
// SEAT SIX
                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[5].available;

                                av ?   add(appState.chairs[5]) : null;

                                av ? press(appState.chairs[5].id) : null;

                                av ?  setState(() {
                                  appState.chairs[5].selected =  !appState.chairs[5].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[5].available  ?  press(appState.chairs[5].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[5].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[5].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),
                            SizedBox(width: 45,),

// SEAT SEVEN
                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[6].available;

                                av ?   add(appState.chairs[6]) : null;

                                av ? press(appState.chairs[6].id) : null;

                                av ?  setState(() {
                                  appState.chairs[6].selected =  !appState.chairs[6].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[6].available  ?  press(appState.chairs[6].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[6].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[6].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),
                      Spacer(),

// SEAT EIGHT
                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[7].available;

                                av ?   add(appState.chairs[7]) : null;

                                av ? press(appState.chairs[7].id) : null;

                                av ?  setState(() {
                                  appState.chairs[7].selected =  !appState.chairs[7].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[7].available  ?  press(appState.chairs[7].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[7].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[7].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),

                          ],
                        ),

                        SizedBox(height: 30,),
                        Row(
                          children: <Widget>[
//   SEAT NINE
                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[8].available;

                                av ?   add(appState.chairs[8]) : null;

                                av ? press(appState.chairs[8].id) : null;

                                av ?  setState(() {
                                  appState.chairs[8].selected =  !appState.chairs[8].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[8].available  ?  press(appState.chairs[8].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[8].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[8].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),
                            SizedBox(width: 45,),
//   SEAT TEN
                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[9].available;

                                av ?   add(appState.chairs[9]) : null;

                                av ? press(appState.chairs[9].id) : null;

                                av ?  setState(() {
                                  appState.chairs[9].selected =  !appState.chairs[9].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[9].available  ?  press(appState.chairs[9].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[9].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[9].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),
                            Spacer(),


//Seat Eleven

                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[10].available;

                                av ?   add(appState.chairs[10]) : null;

                                av ? press(appState.chairs[10].id) : null;

                                av ?  setState(() {
                                  appState.chairs[10].selected =  !appState.chairs[10].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[10].available  ?  press(appState.chairs[10].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[10].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[10].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),

                          ],
                        ),


                        SizedBox(height: 30,),
                        Row(
                          children: <Widget>[

//  Seat Twelve

                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[11].available;

                                av ?   add(appState.chairs[11]) : null;

                                av ? press(appState.chairs[11].id) : null;

                                av ?  setState(() {
                                  appState.chairs[11].selected =  !appState.chairs[11].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[11].available  ?  press(appState.chairs[11].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[11].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[11].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),
                            SizedBox(width: 45,),

//  Seat Thirteen
                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[12].available;

                                av ?   add(appState.chairs[12]) : null;

                                av ? press(appState.chairs[12].id) : null;

                                av ?  setState(() {
                                  appState.chairs[12].selected =  !appState.chairs[12].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[12].available  ?  press(appState.chairs[12].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[12].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[12].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),
                            SizedBox(width: 45,),
//  Seat fourteen
                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[13].available;

                                av ?   add(appState.chairs[13]) : null;

                                av ? press(appState.chairs[13].id) : null;

                                av ?  setState(() {
                                  appState.chairs[13].selected =  !appState.chairs[13].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[13].available  ?  press(appState.chairs[13].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[13].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[13].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),
                            SizedBox(width: 30,),


//  Seat Fifteen
                            InkWell(

                              onTap: (){
                                var av =    appState.chairs[14].available;

                                av ?   add(appState.chairs[14]) : null;

                                av ? press(appState.chairs[14].id) : null;

                                av ?  setState(() {
                                  appState.chairs[14].selected =  !appState.chairs[14].selected;
                                }) : null;


                              },
                              child: Stack(
                                children: <Widget>[
                                  Container(

                                      height: 50,

                                      width: 50,
                                      child:  appState.chairs[14].available  ?  press(appState.chairs[14].id) :  Image.asset("images/black.png")
                                  ),

                                  Positioned.fill(

                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text((appState.chairs[14].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[14].available ?  Colors.black: Colors.white),)))
                                ],
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
            )),
          ),




          SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 40,
                    width: 40,
                    child: Image.asset("images/black.png")),
                Text("Unavailable")
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                    height: 40,
                    width: 40,
                    child: Image.asset("images/white.png")),
                Text("Available")
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                    height: 40,
                    width: 40,
                    child: Image.asset("images/green.png")),
                Text("Selected")
              ],
            ),
          ],

          ),



          SizedBox(height: 50,),



          Padding(
            padding: const EdgeInsets.only(left: 40, bottom: 30, right: 40),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ButtonTheme(
                disabledColor: Colors.grey,buttonColor: Colors.red,
                minWidth: double.infinity,
                height: 45,

                child: RaisedButton(

                  onPressed: () {
                    appState.selected.length == 0  ?snack() :  continues(context) ;
    },
                    child:  Text(
                      "Continue".toUpperCase(),
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    )
//                      :CircularProgressIndicator(
//                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),)
                ),
              ),
            ),
          ),


        ],
      )

    );
  }


 press(id) {
   if (appState.chairs[id].selected ) {
  return   Image.asset("images/green.png");
   } else {
return     Image.asset("images/white.png");
   }
}





  void add(whole) {
    setState(() {
    if (appState.selected.contains(whole)){
      appState.selected.remove(whole);
    }else{
      appState.selected.add(whole);
    }
    });

  }


//Widget unavai () {
//  if (appState.chairs[appState.chairs[0].id].available) {
//    return appState.chairs[0].image;
//  } else {
//    Image.asset("images/black.png");
//  }
//}
//
//
//Widget avai () {
//  if (appState.chairs[0].selected ) {
//    return Image.asset("images/white.png");
//  } else {
//    Image.asset("images/black.png");
//  }
//}

  void continues(context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Test()));
  }

  snack(){
    return _scaffoldKey.currentState.showSnackBar(SnackBar(content:  Text("Please pick a seat"), backgroundColor: Colors.red,   duration: Duration(
      seconds: 2,
    )));
  }

}


