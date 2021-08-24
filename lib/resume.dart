import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'resume_contents.dart';

class Resume extends StatefulWidget {
  @override
  _Resume createState() => _Resume();
}

class _Resume extends State<Resume> {
  final String name = 'Quinn Campfield';
  final String email = 'campfieq@oregonstate.edu';
  final String github = 'https://github.com/QuinnBGC';

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(5),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[banner(context, name, 30)])
              ),
              
              for (var i = 0; i < 4; i++)  
                ResumeContents(
                title: contentsData['title']![i],
                company: contentsData['company']![i],
                length: contentsData['length']![i],
                location: contentsData['location']![i],
                description: 'NDA sorry.'),
              Padding(padding: EdgeInsets.all(5),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[banner(context, email, 10)])
                ),
              Padding(padding: EdgeInsets.all(5),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: _hyperlink,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: banner(context, github, 10))
                    ),
                ],)
              ),
              ]
          ),
        )
      )
    );
  }
  Widget banner(BuildContext context, String text, double size) {
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: size));
  }
  
}

var contentsData = {
  'title' : ['Web Designer', 'Hardware Engineer', 'Software Engineer', 'Instructor'],
  'company' : ['Twitch', 'FitBit', 'Amazon', 'IDTech'],
  'length' : ['2018-2019', '2019-2020', '2020-2021', '2021-Present'],
  'location' : ['Corvallis, OR', 'San Francisco, CA', 'Portland, OR', 'Vancover, BC, CA']
};



_hyperlink() async {
    const link = "https://github.com/wnsgur4322";
    if (await canLaunch(link)) {
      launch(link);
    } else {
      throw 'Could not Launch $link';
    }
  }