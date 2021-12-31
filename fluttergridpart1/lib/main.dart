import 'package:flutter/material.dart';
import 'package:fluttergridpart1/devices.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MY IOT DEVICES",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY IOT DEVICES"),
      ),
      body: Container(
        color: Colors.grey[200],
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.7,
          children: [
            Devices("TV", "assets/images/tv.png"),
            Devices("Fan", "assets/images/fan.png"),
            Devices("Plug", "assets/images/plug.png"),
            Devices("Light", "assets/images/light.png"),
            Devices("Aircond", "assets/images/aircond.png"),
            Devices("Wifi", "assets/images/wifi.png"),
          ],
        ),
      ),
    );
  }
}
