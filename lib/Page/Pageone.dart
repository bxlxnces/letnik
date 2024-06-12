import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page2.dart';

class Pageone extends StatelessWidget {
  const Pageone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('StatefullWidget')),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  const SimpleWidget({super.key});

  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  int _count = 0;

  void _handleButton() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$_count'),
          ElevatedButton(
            onPressed: () {
              _handleButton();
            },
            child: const Text('Click me'),
          ),
          const SizedBox(height: 10.0),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pagetwo()),
              );
            },
            icon: const Icon(Icons.web),
            tooltip: 'NextPage',
          ),
        ],
      ),
    );
  }
}
