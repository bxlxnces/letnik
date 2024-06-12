import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page5.dart';

class Pagefour extends StatelessWidget {
  const Pagefour({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView Widget'),
        ),
        body: ListViewWidget(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        TextWidget(text: "1"),
        TextWidget(text: "2"),
        TextWidget(text: "3"),
        TextWidget(text: "4"),
        TextWidget(text: "5"),
        TextWidget(text: "6"),
        TextWidget(text: "7"),
        TextWidget(text: "8"),
        TextWidget(text: "9"),
        TextWidget(text: "10"),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pagefive()),
            );
          },
          icon: Icon(Icons.web),
          tooltip: 'NextPage',
        ),
      ],
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return TextWidget(text: '$index');
        });
  }
}
