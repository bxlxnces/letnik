import 'package:flutter/material.dart';
import 'package:rossecond/Page/Pageone.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  const ScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('StatelessWidget')),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'StatelessWidget',
            textDirection: TextDirection.ltr,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pageone()),
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
