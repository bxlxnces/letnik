import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page4.dart';

class Pagethree extends StatelessWidget {
  const Pagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column & Row Widgets'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.width,
      required this.fontSize})
      : super(key: key);

  final String text;
  final Color color;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: color,
      height: 100,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        TextWidget(
          color: Colors.limeAccent,
          width: 120,
          text: 'First',
          fontSize: 50,
        ),
        TextWidget(
          color: Colors.cyanAccent,
          width: 180,
          text: 'Second',
          fontSize: 40,
        ),
        TextWidget(
          color: Colors.purpleAccent,
          width: 100,
          text: 'Third',
          fontSize: 30,
        ),
        SizedBox(height: 10.0),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pagefour()),
            );
          },
          icon: Icon(Icons.web),
          tooltip: 'NextPage',
        ),
      ],
    );
  }
}
