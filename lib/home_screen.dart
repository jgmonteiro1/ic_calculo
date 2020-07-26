import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.school, size: 100, color: Colors.white, ),
            Padding(
              padding: EdgeInsets.only(bottom: 100.0),
            ),
           ButtonTheme(
             minWidth: 150.0,
             height: 50.0,
             child:  RaisedButton(
               onPressed: (){}, child: Text("Começar", style: TextStyle(color: Colors.white, fontSize: 20.0),),
               color: Colors.black45,
             ),
           ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
            ),
            ButtonTheme(
              minWidth: 150.0,
              height: 50.0,
              child:  RaisedButton(
                onPressed: (){}, child: Text("Sobre", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                color: Colors.black45,
              ),
            )
          ],
        ),
      ),
    );
  }
}

