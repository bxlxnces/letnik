import 'package:flutter/material.dart';
import 'package:rossecond/Page/Page7.dart';

class Pagesix extends StatelessWidget {
  const Pagesix({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PageView Widget'),
        ),
        body: PageViewWidget(),
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

class PageViewWidget extends StatelessWidget {
  final PageController controller = PageController(initialPage: 0);

  PageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      // pageSnapping: false,
      // physics: BouncingScrollPhysics(),
      // physics: NeverScrollableScrollPhysics(),
      controller: controller,
      // onPageChanged: (number) {
      //   print("Page number $number");
      // },
      children: <Widget>[
        Container(
          color: Colors.red,
          child: const Center(
            child: Text('Stop!'),
          ),
        ),
        Container(
          color: Colors.orange,
          child: const Center(
            child: Text('Ready?'),
          ),
        ),
        Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Go!',
                style: TextStyle(fontSize: 40),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pageseven()),
                  );
                },
                icon: const Icon(Icons.web),
                tooltip: 'NextPage',
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  controller.jumpToPage(0);
                  controller.animateToPage(
                    0,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInBack,
                  );
                },
                child: Text('Reload'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PageViewBuilderWidget extends StatelessWidget {
  const PageViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      // itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: index % 2 == 0 ? Colors.red : Colors.greenAccent,
          alignment: Alignment.center,
          child: Text('$index'),
        );
      },
    );
  }
}

class PageViewCustomWidget extends StatelessWidget {
  const PageViewCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.custom(
      childrenDelegate: SliverChildListDelegate([
        const Text('1'),
        const Text('2'),
        const Text('3'),
      ]),
    );
  }
}
