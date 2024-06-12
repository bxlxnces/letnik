import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page3.dart';

class Pagetwo extends StatelessWidget {
  const Pagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container widget'),
        ),
        body: const SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            // color: Colors.green,
            height: 200,
            width: 200,
            alignment: Alignment.center,
            // padding: EdgeInsets.all(50),
            // margin: EdgeInsets.all(50),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bali.jpg'),
                fit: BoxFit.cover,
              ),

              // gradient: new LinearGradient(
              //   colors: [Colors.red, Colors.cyan],
              // ),
              // color: Colors.cyan,
              // border: Border.all(
              //   color: Colors.black,
              //   width: 8,
              // ),
              // borderRadius: BorderRadius.circular(15),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                  offset: Offset(-5, 5),
                ),
              ],
            ),
            // color: Colors.green,
            child: Text(
              'Bali',
              style: TextStyle(fontSize: 40, color: Colors.white70),
            ),
          ),
          const SizedBox(height: 10.0),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pagethree()),
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
