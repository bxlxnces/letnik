import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page6.dart';

class Pagefive extends StatelessWidget {
  const Pagefive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GridView Widget'),
        ),
        body: Column(
          children: [
            Expanded(
              child: GridViewCountWidget(),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pagesix()),
                );
              },
              icon: const Icon(Icons.web),
              tooltip: 'NextPage',
            ),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
      child: Text(
        text,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: const <Widget>[
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
      ],
    );
  }
}

class GridViewBuilderWidget extends StatelessWidget {
  const GridViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return TextWidget(text: '$index');
        });
  }
}

class GridViewCountWidget extends StatelessWidget {
  const GridViewCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: const <Widget>[
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
      ],
    );
  }
}

class GridViewExtentWidget extends StatelessWidget {
  const GridViewExtentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final queryData = MediaQuery.of(context);
    print(queryData.size);

    return Container(
        width: 300,
        color: Colors.greenAccent,
        child: GridView.extent(
          maxCrossAxisExtent: 90,
          children: const [
            TextWidget(text: "1"),
            TextWidget(text: "2"),
            TextWidget(text: "3"),
            TextWidget(text: "4"),
            TextWidget(text: "5"),
          ],
        ));
  }
}

class GridViewCustomWidget extends StatelessWidget {
  const GridViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      // childrenDelegate: SliverChildListDelegate([
      //   TextWidget(text: "1"),
      //   TextWidget(text: "2"),
      //   TextWidget(text: "3"),
      // ]));
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return TextWidget(text: '$index');
      }),
    );
  }
}
