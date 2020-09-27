import 'package:flutter/material.dart';
import 'package:gauge_view_example/images.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Guage View (Speed Meter)';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 400.0,
          width: 400.0,
          padding: EdgeInsets.all(16.0),
          child: KdGaugeView(
            minSpeed: 0.0,
            maxSpeed: 180.0,
            speed: 140.0,
            speedTextStyle: TextStyle(
              color: Color(0xFFC41A3B),
              fontSize: 64.0,
              fontWeight: FontWeight.bold,
            ),
            animate: true,
            duration: Duration(seconds: 5),
            subDivisionCircleColors: Color(0xFFC41A3B),
            divisionCircleColors: Color(0xFF1B1F32),
            fractionDigits: 0,
            // baseGaugeColor: Color(0xFFFBE0E6),
            activeGaugeColor: Color(0xFFC41A3B),
            // inactiveGaugeColor: Color(0xFF1B1F32),
            innerCirclePadding: 32.0,
            // unitOfMeasurement: 'M/Hr',
            unitOfMeasurementTextStyle: TextStyle(
              color: Color(0xFFC41A3B),
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            minMaxTextStyle: TextStyle(
              color: Color(0xFFC41A3B),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
            gaugeWidth: 16.0,
            alertColorArray: [
              Color(0xFF1B1F32),
              Colors.purpleAccent,
              Color(0xFFC41A3B),
            ],
            alertSpeedArray: [
              40.0,
              80.0,
              120.0,
            ],
            child: Container(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 88.0),
                  child: Text(
                    'The Tech Designer',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200.0),
                image: DecorationImage(
                  image: AssetImage(logo),
                  colorFilter: ColorFilter.mode(
                    Color(0xFF1B1F32).withOpacity(0.1),
                    BlendMode.dstATop,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
