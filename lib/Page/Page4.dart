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
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: const TextStyle(fontSize: 40),
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
        const TextWidget(text: "1"),
        const TextWidget(text: "2"),
        const TextWidget(text: "3"),
        const TextWidget(text: "4"),
        const TextWidget(text: "5"),
        const TextWidget(text: "6"),
        const TextWidget(text: "7"),
        const TextWidget(text: "8"),
        const TextWidget(text: "9"),
        const TextWidget(text: "10"),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pagefive()),
            );
          },
          icon: const Icon(Icons.web),
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
