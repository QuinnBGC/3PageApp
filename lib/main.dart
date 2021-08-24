// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'business_card.dart';
import 'tabmenu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(
        primaryColor: Colors.cyan[100], //.cyan[100]
      ),
      home: DefaultTabController(
        length: 3,
        child: TabMenu()),
      routes: {
        BusinessCard.route: (context) => BusinessCard(),
      }
    );
  }
}
