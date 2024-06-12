import 'package:flutter/material.dart';
import 'package:rossecond/namedroute.dart';
import 'package:rossecond/ui_widget.dart/BappBar.dart';
import 'package:rossecond/utils.dart/constants.dart';

class Pageten extends StatelessWidget {
  const Pageten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.light(),
      theme: ThemeData.dark(),
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      //theme: basicTheme(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).iconTheme.color,
        ),
        title: Text(
          'Custom Theme',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontSize: LargeTextSize),
        ),
      ),
      body: ListWidget(),
      bottomNavigationBar: const BAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add',
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      persistentFooterButtons: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NamedRoutesWithParams()),
            );
          },
          icon: const Icon(Icons.router),
          tooltip: 'Router Data',
        ),
      ],
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 20, bottom: 5, right: 10, left: 10),
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return (index == 14)
            ? Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 40),

                // child: Theme(
                //   data: Theme.of(context).copyWith(accentColor: Colors.yellow),
                //   child: RaisedButton(
                //     child: Text("Load More"),
                //     onPressed: () {},
                //   ),
                // ),
              )
            : Card(
                child: ListTile(
                  trailing: Theme(
                    data: Theme.of(context).copyWith(
                      iconTheme: Theme.of(context).iconTheme.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ),
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Header $index',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  subtitle: Text(
                    'Description text $index',
                    // style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              );
      },
    );
  }
}
