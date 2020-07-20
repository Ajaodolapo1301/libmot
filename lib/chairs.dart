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

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Select Seat(s)", style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
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


                              Container(
                                height: 40,
                                width: 40,
                                child: Image.asset("images/steering.png"),
                              ),

                              Spacer(),

//seat TWO

                              InkWell(

                                onTap: (){
                                  var av =    appState.chairs[1].available;

                                  av ?   add(appState.chairs[1]) : Container();

                                  av ? press(appState.chairs[1].id)  : Container();

                            av ?  setState(() {
                                    appState.chairs[1].selected =  !appState.chairs[1].selected;
                                  }) : Container();



                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[1].available  ?  press(appState.chairs[1].id) :  grey()
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


                                  av ?   add(appState.chairs[0].id)  : Container();

                                  av ?    setState(() {

                                    appState.chairs[0].selected =  !appState.chairs[0].selected;
                                  }) : Container();

                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[0].available ? press(appState.chairs[0].id) : grey( )
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[



//SEAT THREE

                              InkWell(

                                onTap: (){
                                  var av =    appState.chairs[2].available;


                                  av ?   add(appState.chairs[2]) : Container();

                                  av ?    setState(() {

                                    appState.chairs[2].selected = !appState.chairs[2].selected;
                                  }) : Container();

                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                        height: 40,
                                        width: 40,
                                        child:  appState.chairs[2].available ? press(appState.chairs[2].id) :   grey( )
                                    ),

                                    Positioned.fill(

                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text((appState.chairs[2].id + 1 ).toString(), style: TextStyle(color: appState.chairs[2].available ?  Colors.black: Colors.white),)))
                                  ],
                                ),
                              ),


// SEAT FOUR
                              InkWell(

                                onTap: (){
                                  var av =    appState.chairs[3].available;

                                  av ?   add(appState.chairs[3]) : Container();

                                  av ? press(appState.chairs[3].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[3].selected =  !appState.chairs[3].selected;
                                  }) : Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[3].available  ?  press(appState.chairs[3].id) :   grey( )
                                    ),

                                    Positioned.fill(

                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text((appState.chairs[3].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[3].available ?  Colors.black: Colors.white),)))
                                  ],
                                ),
                              ),



//Seat FIVE
                              InkWell(

                                onTap: (){
                                  var av =    appState.chairs[4].available;

                                  av ?   add(appState.chairs[4]) : Container();

                                  av ? press(appState.chairs[4].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[4].selected =  !appState.chairs[4].selected;
                                  }) : Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[4].available  ?  press(appState.chairs[4].id) :   grey( )
                                    ),

                                    Positioned.fill(

                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text((appState.chairs[4].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[4].available ?  Colors.black: Colors.white),)))
                                  ],
                                ),
                              ),

                              SizedBox(width: 45,),

                            ],
                          ),

                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
// SEAT SIX
                              InkWell(

                                onTap: (){
                                  var av =    appState.chairs[5].available;

                                  av ?   add(appState.chairs[5]) : Container();

                                  av ? press(appState.chairs[5].id) :Container();
                                  av ?  setState(() {
                                    appState.chairs[5].selected =  !appState.chairs[5].selected;
                                  }) : Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[5].available  ?  press(appState.chairs[5].id) :   grey( )
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

                                  av ?   add(appState.chairs[6]) : Container();

                                  av ? press(appState.chairs[6].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[6].selected =  !appState.chairs[6].selected;
                                  }): Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[6].available  ?  press(appState.chairs[6].id) :   grey( )
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

                                  av ?   add(appState.chairs[7]) : Container();

                                  av ? press(appState.chairs[7].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[7].selected =  !appState.chairs[7].selected;
                                  }) : Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[7].available  ?  press(appState.chairs[7].id) :   grey( )
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
//   SEAT NINE
                              InkWell(

                                onTap: (){
                                  var av =    appState.chairs[8].available;

                                  av ?   add(appState.chairs[8]): Container();

                                  av ? press(appState.chairs[8].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[8].selected =  !appState.chairs[8].selected;
                                  }) : Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[8].available  ?  press(appState.chairs[8].id) :   grey( )
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

                                  av ?   add(appState.chairs[9]) : Container();

                                  av ? press(appState.chairs[9].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[9].selected =  !appState.chairs[9].selected;
                                  }) : Container();

                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[9].available  ?  press(appState.chairs[9].id) :   grey( )
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

                                  av ?   add(appState.chairs[10]) : Container();

                                  av ? press(appState.chairs[10].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[10].selected =  !appState.chairs[10].selected;
                                  }) : Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[10].available  ?  press(appState.chairs[10].id) :   grey( )
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

//  Seat Twelve

                              InkWell(

                                onTap: (){
                                  var av =    appState.chairs[11].available;

                                  av ?   add(appState.chairs[11]) : Container();

                                  av ? press(appState.chairs[11].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[11].selected =  !appState.chairs[11].selected;
                                  }) : Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[11].available  ?  press(appState.chairs[11].id) :   grey( )
                                    ),

                                    Positioned.fill(

                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text((appState.chairs[11].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[11].available ?  Colors.black: Colors.white),)))
                                  ],
                                ),
                              ),


//  Seat Thirteen
                              InkWell(

                                onTap: (){
                                  var av =    appState.chairs[12].available;

                                  av ?   add(appState.chairs[12]) : Container();

                                  av ? press(appState.chairs[12].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[12].selected =  !appState.chairs[12].selected;
                                  }) : Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[12].available  ?  press(appState.chairs[12].id) :   grey( )
                                    ),

                                    Positioned.fill(

                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text((appState.chairs[12].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[12].available ?  Colors.black: Colors.white),)))
                                  ],
                                ),
                              ),

//  Seat fourteen
                              InkWell(

                                onTap: (){
                                  var av =    appState.chairs[13].available;

                                  av ?   add(appState.chairs[13]) : Container();

                                  av ? press(appState.chairs[13].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[13].selected =  !appState.chairs[13].selected;
                                  }) : Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(
                                        height: 40,
                                        width:40,
                                        child:  appState.chairs[13].available  ?  press(appState.chairs[13].id) :   grey( )
                                    ),

                                    Positioned.fill(

                                        child: Align(
                                            alignment: Alignment.center,
                                            child: Text((appState.chairs[13].id + 1 ).toString(),  style: TextStyle(color: appState.chairs[13].available ?  Colors.black: Colors.white),)))
                                  ],
                                ),
                              ),



//  Seat Fifteen
                              InkWell(

                                onTap: (){
                                  var av =    appState.chairs[14].available;

                                  av ?   add(appState.chairs[14]) : Container();

                                  av ? press(appState.chairs[14].id) : Container();

                                  av ?  setState(() {
                                    appState.chairs[14].selected =  !appState.chairs[14].selected;
                                  }) : Container();


                                },
                                child: Stack(
                                  children: <Widget>[
                                    Container(

                                        height: 40,

                                        width: 40,
                                        child:  appState.chairs[14].available  ?  press(appState.chairs[14].id) :  grey()
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
                      child: Image.asset("images/grey.png")),
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



            Container(
              height: 45,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: RaisedButton(
                color:  Colors.red,
                onPressed: () {
                  appState.selected.length == 0  ?snack() :  continues(context) ;
                 },
                  child:  Text(
                    "Continue".toUpperCase(),
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )

              ),
            ),


          ],
        ),
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


grey(){
    return  Image.asset("images/grey.png");
}



  void add(chair) {
    setState(() {
    if (appState.selected.contains(chair)){
      appState.selected.remove(chair);
    }else{
      appState.selected.add(chair);
    }
    });

  }





  void continues(context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Test()));
  }

  snack(){
    return _scaffoldKey.currentState.showSnackBar(SnackBar(content:  Text("Please pick a seat"), backgroundColor: Colors.red,   duration: Duration(
      seconds: 2,
    )));
  }

}


