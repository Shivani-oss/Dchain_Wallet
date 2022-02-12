import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DoubleCheck extends StatelessWidget {
  const DoubleCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 50, bottom: 0),
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
              ),
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
       Container(
          margin: new EdgeInsets.fromLTRB(0, 40, 80, 0),
          child: Text("Let's double-check",
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.headline1),
        ),
        Container(
          margin: new EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: Text(
              "Well done. To verify that you've written down your recovery phrase correctly, please enter it again in the next step",
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.bodyText2),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 15.0, bottom: 15.0, top: 15.0),
                  child: RaisedButton(
                      color: Colors.lightBlue[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(15),
                      elevation: 8,
                      child:
                          Text("Let's do it", style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/validate');
                      }))],
          ),
        ),
      ],
    ));
  }
}
