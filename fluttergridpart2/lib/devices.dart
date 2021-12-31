import 'package:flutter/material.dart';

class Devices extends StatelessWidget {
  final String devicetitle;
  final String location;
  final String deviceonoff;
  //final Function()? selectHandler;

  const Devices(this.devicetitle, this.location, this.deviceonoff);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        margin: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  location,
                  alignment: Alignment.centerLeft,
                ),
                Text(
                  devicetitle,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                Text(
                  deviceonoff,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/off.png"),
              ],
            )
          ],
        ));
  }
}
