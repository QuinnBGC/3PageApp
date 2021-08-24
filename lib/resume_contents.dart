import 'package:flutter/material.dart';

class ResumeContents extends StatefulWidget {
  final title;
  final company;
  final length;
  final location;
  final description;
  ResumeContents({this.title, this.company, this.length, this.location, this.description});

  @override
  _ResumeContents createState() => _ResumeContents();
}

class _ResumeContents extends State<ResumeContents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Container(
          margin: EdgeInsets.all(1),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: <Widget>[
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      softWrap: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                      Text(
                      widget.company,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      maxLines: 1,
                  ),
                      Text(
                        widget.length,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        maxLines: 1,
                  ),
                      Text(
                        widget.location,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        maxLines: 1,
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: Text(
                        widget.description,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}