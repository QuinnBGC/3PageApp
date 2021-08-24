import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'business_card.dart';
import 'resume.dart';
import 'predictor.dart';

class TabMenu extends StatefulWidget {
 static const route = '/tab';

 TabMenu ();

 @override
  _TabMenu createState() => _TabMenu();
}

class _TabMenu extends State<TabMenu> {

    List<Widget> _widgets = <Widget>[
    BusinessCard(),
    Resume(),
    Predicator()
  ];


  @override
  initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Call Me Maybe"),
        backgroundColor: Colors.blue[100],
        bottom: TabBar(
          tabs: <Tab>[
            Tab(icon: Icon(Icons.image),),
            Tab(icon: Icon(Icons.list),),
            Tab(icon: Icon(Icons.help),)
          ],
        )
      ),
      body: TabBarView(
        children: [
          Center(child: BusinessCard()),
          Center(child: Resume()),
          Center(child: Predicator())
        ],
        )
    );
  }
}