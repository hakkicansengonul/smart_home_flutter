import 'package:flutter/material.dart';

List datahome = [
  pagee(
      "Electricity",
      Icon(
        Icons.electrical_services_outlined,
        size: 40.0,
        color: Colors.white,
      ),
      Color(0xff9f79ee)),
  pagee(
      "Fan",
      Icon(
        Icons.flip_camera_android_outlined,
        size: 40.0,
        color: Colors.white,
      ),
      Color(0xff9f79ee)),
  pagee(
      "Lights",
      Icon(
        Icons.lightbulb_outline,
        size: 40.0,
        color: Colors.white,
      ),
      Color(0xff9f79ee))
];

bool isWitched = false;

class pagee extends StatefulWidget {
  final String title;
  final Icon icon;
  final Color color;

  const pagee(String this.title, Icon this.icon, Color this.color);
  @override
  _pageeState createState() => _pageeState();
}

class _pageeState extends State<pagee> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(30.0)),
      height: 70.0,
      width: 70.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.icon,
          Text(
            widget.title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          Switch(
            value: isWitched,
            onChanged: (value) {
              setState(() {
                isWitched = value;
              });
            },
            activeTrackColor: Colors.white,
            activeColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
