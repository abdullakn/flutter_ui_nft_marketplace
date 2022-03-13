import 'package:flutter/material.dart';

class TabBarSample extends StatelessWidget {
  const TabBarSample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
     child: Scaffold(
       appBar: AppBar(
         title: Text('Heading'),
         bottom: TabBar(tabs: <Widget>[
           Tab(text: 'Home',),
           Tab(text: 'Profille',)
         ]),
       ),
       body: TabBarView(children: [
         Text("heading1"),
         Text("heading2"),
       ]),
     ));
  }
}