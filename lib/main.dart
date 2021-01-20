import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(
  MaterialApp(
    locale: Locale('pt', 'BR'),
    home: Home(),
  ),
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return CustomPaint(
      painter: MyCustomPaint(),
      child: Container(),
    );
  }
}

class MyCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2 );
    canvas.drawCircle(
      center,
      150.0,
      Paint()..color  = Colors.yellow
    );
    canvas.drawCircle(
      Offset(size.width / 1.5, size.height / 2.18),
      50.0,
      Paint(),
    );
    canvas.drawCircle(
      Offset(size.width / 1.5, size.height / 2.18),
      25.0,
      Paint()..color = Colors.white,
    );
    canvas.drawCircle(
      Offset(size.width / 3, size.height / 2.18),
      50.0,
      Paint(),
    );
    canvas.drawCircle(
      Offset(size.width / 3, size.height / 2.18),
      25.0,
      Paint()..color = Colors.white,
    );
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height - 320),
        radius: center.dx / 2.5,
      ),
      0,
      3.14,
      false,
      Paint(),
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelagate) {
    return true;
  }
}