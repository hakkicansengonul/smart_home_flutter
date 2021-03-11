import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:smart_home_flutter_app/details.dart';
import 'datahome.dart';
import 'package:animated_icon_button/animated_icon_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939_1280.jpg",
                ),
                fit: BoxFit.cover)
            //gradient: LinearGradient(
            //  begin: Alignment.topLeft,
            //end: Alignment(0.8, 0.8),
            //colors: [
            //  Colors.orange,
            // Colors.blueAccent,
            // Colors.white,
            //  Colors.red,
            //  Colors.deepPurpleAccent,
            //  Colors.deepOrangeAccent,
            // ]),
            ),
        child: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            Container(
              height: 90.0,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Maria's\nSmart Home",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.settings_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            _swipper(),
            SizedBox(
              height: 280.0,
            ),
            Text(
              "1 ACTIVE FACILITIES",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedIconButton(
                  endBackgroundColor: Color(0xff9f79ee),
                  startBackgroundColor: Colors.white,
                  size: 35,
                  onPressed: () {},
                  duration: Duration(milliseconds: 200),
                  endIcon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  startIcon: Icon(
                    Icons.add,
                    color: Color(0xff9f79ee),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    height: 70.0,
                    width: 70.0,
                    child: IconButton(
                        icon: Icon(
                          Icons.group_work_outlined,
                          color: Color(0xff9f79ee),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage()));
                        }))
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _swipper() {
  return Container(
    height: 300.0,
    width: double.infinity,
    child: Swiper(
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 70,
          width: 70.0,
          child: datahome[index],
        );
      },
      itemCount: datahome.length,
      // pagination: SwiperPagination(),

      viewportFraction: 0.8,
      scale: 0.9,

      control: new SwiperControl(color: Colors.white),
    ),
  );
}
