import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page9.dart';

class Pageeight extends StatelessWidget {
  const Pageeight({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'ShadowsInto'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Import Fonts'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello World',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              Text(
                'ShadowsInto font',
                style: TextStyle(fontSize: 30, fontFamily: 'ShadowsInto'),
              ),
              Text(
                'Flutter Ros',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pagenine()),
                  );
                },
                icon: Icon(Icons.web),
                tooltip: 'NextPage',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
