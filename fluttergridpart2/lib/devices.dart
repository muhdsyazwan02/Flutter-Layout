import 'package:flutter/material.dart';

class Devices extends StatefulWidget {
  final String devicename;
  final String locationurl;

  Devices(this.devicename, this.locationurl);

  @override
  _DevicesState createState() => _DevicesState(devicename, locationurl);
}

class _DevicesState extends State<Devices> {
  final String devicetitle;
  final String location;

  var devicestate = ["OFF", "ON"];

  var _devicestateindex = 0;
  String _buttononoffurl = "assets/images/off.png";

  _DevicesState(this.devicetitle, this.location);

  void _onoffdevice() {
    if (_devicestateindex == 0) {
      setState(() {
        _devicestateindex = 1;
        _buttononoffurl = "assets/images/on.png";
      });
    } else {
      setState(() {
        _devicestateindex = 0;
        _buttononoffurl = "assets/images/off.png";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        margin: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  location,
                  alignment: Alignment.center,
                ),
                Text(
                  devicetitle,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Text(
                  devicestate.elementAt(_devicestateindex),
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: _onoffdevice,
                  child: Image.asset(_buttononoffurl),
                )
              ],
            )
          ],
        ));
  }
}
