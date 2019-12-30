import 'package:flutter/material.dart';
import 'package:torch/torch.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget{
  @override 
State<StatefulWidget> createState(){
  return _MyAppState();
}
}
class _MyAppState extends State<MyApp> {
  void showToast(){
    Fluttertoast.showToast(
msg: "On",
toastLength: Toast.LENGTH_SHORT,
gravity: ToastGravity.BOTTOM,
  timeInSecForIos: 1,
  backgroundColor: Colors.green,
  textColor: Colors.white,
  fontSize: 16.0
    );
  }
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
home: Scaffold(
  backgroundColor: Colors.black,
appBar: AppBar(title: Text("Torch light!", 
style: TextStyle(fontStyle: FontStyle.italic,
  fontWeight: FontWeight.w400,
  fontSize: 22,
  ),
  ),
   backgroundColor: Colors.pink,
   shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10)
  ),
),
body: Container(
  alignment: Alignment.center,
  margin: EdgeInsets.only(top: 40, left: 8),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
 children: <Widget>[
RaisedButton(
  child: Text("Torch on",
  style: TextStyle(fontSize: 20),
  ),
  color: Colors.white,
padding: EdgeInsets.all(20),
splashColor: Colors.green,
elevation: 20,
highlightElevation: 1,
textColor: Colors.black,
shape:
RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10),
),
  onPressed: (){
 {
 showToast();
Torch.turnOn();
 Torch.flash(Duration(hours: 300));   
  }
  }
   ),
   Container(
    margin:
     EdgeInsets.only(left: 10),
  child:
   Row(
        mainAxisAlignment: MainAxisAlignment.center,
 children: <Widget>[
  RaisedButton(
   child: Text("Torch off",
    style: TextStyle(fontSize: 20),
   ),
 color: Colors.white,
padding: EdgeInsets.all(20),
splashColor: Colors.red,
elevation: 20,
highlightElevation: 1,
textColor: Colors.black,
shape:
RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
),
    onPressed: (){
     {
Fluttertoast.showToast(
msg: "Off",
toastLength: Toast.LENGTH_SHORT,
gravity: ToastGravity.BOTTOM,
  timeInSecForIos: 1,
  backgroundColor: Colors.red,
  textColor: Colors.white,
  fontSize: 16.0
);
 Torch.turnOff();
}
}
 )
 ])
   )
   ],
 ),
),
   bottomNavigationBar: 
   BottomNavigationBar(
  currentIndex: 0,
  fixedColor: Colors.blue,
  items: <BottomNavigationBarItem>[ 
    BottomNavigationBarItem
    (icon:Icon(Icons.flash_on,
    color: Colors.red,),
    title: Text("Flash",style: TextStyle(color: Colors.white)
    ),
    ),
    BottomNavigationBarItem(icon: Icon(
      Icons.settings,
     color: Colors.white,
     ), 
     title: Text("Settings",
      style: TextStyle(color: Colors.white,
       fontSize: 15),
     ),
     ),
    ],
  backgroundColor: Colors.black,
  )
  )
    );
  }
} 
