import 'package:flutter/material.dart';
import 'package:fluttergridpart2/devices.dart';

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
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: const Text(
                "MY IOT DEVICES",
              ),
              bottom: const TabBar(tabs: [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Living Room",
                ),
                Tab(
                  text: "Bedroom",
                ),
              ]),
            ),
            body: TabBarView(
              children: [
                Container(
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
                Container(
                  color: Colors.grey[200],
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1.7,
                    children: [
                      Devices("TV", "assets/images/tv.png"),
                      Devices("Aircond", "assets/images/aircond.png"),
                      Devices("Wifi", "assets/images/wifi.png"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey[200],
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1.7,
                    children: [
                      Devices("Fan", "assets/images/fan.png"),
                      Devices("Plug", "assets/images/plug.png"),
                      Devices("Light", "assets/images/light.png"),
                      Devices("Aircond", "assets/images/aircond.png"),
                    ],
                  ),
                ),
              ],
            )));
  }
}
