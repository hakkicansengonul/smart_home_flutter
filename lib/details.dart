import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

double _value = 60.0;
double _value2 = 6.0;

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://media.giphy.com/media/MBwubCWsfi3siFab5m/source.gif"),
                fit: BoxFit.fitHeight)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 70.0,
            ),
            // Padding(
            //    padding: const EdgeInsets.only(right: 400.0),
            //   child: IconButton(icon: Icon(Icons.keyboard_backspace_outlined,color: Colors.black,size: 35.0,), onPressed: (){Navigator.pop(context);}),
            //  ),
            // SizedBox(height: 5.0,),
            Icon(
              Icons.flip_camera_android_outlined,
              color: Colors.white,
              size: 45.0,
            ),
            //SizedBox(height: 10.0,),
            Text(
              "Fan",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            CircularStepProgressIndicator(
              selectedColor: Color(0xff9f79ee),
              totalSteps: 10,
              currentStep: _value2.toInt(),
              width: 200,
              height: 200.0,
              roundedCap: (_, isSelected) => isSelected,
            ),

            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _value = _value - 10;
                      _value2 = _value / 10;
                    });
                  },
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff9f79ee),
                    ),
                    child: Center(
                        child: Text(
                      "-",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 45.0),
                    )),
                  ),
                ),
                Container(
                  height: 100.0,
                  width: 120.0,
                  child: Center(
                      child: Text(
                    "$_value\%",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _value = _value + 10;
                      _value2 = _value / 10;
                    });
                  },
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff9f79ee),
                    ),
                    child: Center(
                        child: Text(
                      "+",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 45.0),
                    )),
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 170.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Color(0xff9f79ee),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(
                    child: Text(
                  "OK",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
