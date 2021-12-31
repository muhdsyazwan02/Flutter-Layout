import 'package:flutter/material.dart';
import 'package:fluttergridpart1/devices.dart';

void main() => runApp(MyApp());

/*class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}*/

class MyApp extends StatelessWidget {
  //String devicestate = "OFF";

  /*void changeText() {
    setState(() {
      devicestate = "ON";
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text("MY IOT DEVICES"),
        ),
        body: Container(
          color: Colors.grey[200],
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.7,
            children: const <Widget>[
              Devices("TV", "assets/images/tv.png", "OFF"),
              Devices("Fan", "assets/images/fan.png", "OFF"),
              Devices("Plug", "assets/images/plug.png", "Off"),
              Devices("Light", "assets/images/light.png", "OFF"),
              Devices("Aircond", "assets/images/aircond.png", "OFF"),
              Devices("Wifi", "assets/images/wifi.png", "OFF"),
            ],
          ),
        ),
      ),
    );
  }
}
