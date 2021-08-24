import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class BusinessCard extends StatefulWidget {
  static const route = '/business_card';
 
  @override
  _BusinessCard createState() => _BusinessCard();
}

class _BusinessCard extends State<BusinessCard> {
  final String name = 'Quinn Campfield';
  final String job = 'Software Engineer';
  final String email = 'campfieq@oregonstate.edu';
  final String phone = '415 261 8101';
  final String github = 'github.com/QuinnBGC';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(5.0, 50.0, 5, 0),
              child: banner(context, name, 20)),
            bannerPic(context, name, 20),
            Padding(padding: const EdgeInsets.all(5.0),
              child: banner(context, job, 17)),
            Padding(padding: const EdgeInsets.all(5.0),
              child: InkWell(
                onTap: _textMe,
                child: banner(context, phone, 17)),
            ),
            Padding(padding: const EdgeInsets.all(5.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _hyperlink2,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: banner(context, email, 12))
                  ),
                  InkWell(
                  onTap: _hyperlink,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: banner(context, github, 12))
                  )
              ],))
          ]
        )
      )
    );
  }
  Widget banner(BuildContext context, String text, double size) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: size));   
  }
  Widget bannerPic(BuildContext context, String text, double size) {
    return Padding(
          padding: EdgeInsets.all(size),
          child: SizedBox(
          child: Image.asset('assets/Quinn.JPG'),
          width: 100, height: 100)
        );   
  }
}

  _hyperlink() async {
    const link = "https://github.com/QuinnBGC";
    if (await canLaunch(link)) {
      launch(link);
    } else {
      throw 'Could not Launch $link';
    }
  }


  _hyperlink2() async {
    
  }

  _textMe() async {
    const uri = 'sms:1415-261-8101';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      const uri = 'sms:+1 415 261 8101?body=hello%20';
      if (await canLaunch(uri)) {
        await launch(uri);
      } else {
        throw 'Could not launch $uri';
      }
    }
  }