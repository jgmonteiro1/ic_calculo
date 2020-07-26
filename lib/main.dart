import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ic_calculo/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela de intro',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return _intro();
  }
}

Widget _intro(){
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 4,
        gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromRGBO(77, 198, 254, 0),
            Color.fromRGBO(245, 245, 245, 0)
          ],
        ),
          navigateAfterSeconds: HomeScreen(),
        loadingText: Text('Inicializando =]'),
      ),
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/lgo_uni.png")
          )
        ),
      )
    ],
  );
}





