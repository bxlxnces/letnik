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
              const Text(
                'Hello World',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              const Text(
                'ShadowsInto font',
                style: TextStyle(fontSize: 30, fontFamily: 'ShadowsInto'),
              ),
              const Text(
                'Flutter Ros',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pagenine()),
                  );
                },
                icon: const Icon(Icons.web),
                tooltip: 'NextPage',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
