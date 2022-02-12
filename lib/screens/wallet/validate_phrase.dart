import 'package:flutter/material.dart';

class Validate extends StatelessWidget {
  const Validate({Key? key}) : super(key: key);

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
          margin: new EdgeInsets.fromLTRB(15, 40, 0, 0),
          child: Text('Validate your recovery phrase',
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.headline1),
        ),
        Container(
          margin: new EdgeInsets.fromLTRB(0, 20, 70, 10),
          child: Text('Tap the nth Word (n can be 1..12)',
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.bodyText2),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(1.0),
                    child: ListTile(
                      onTap: () {},
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2.0, horizontal: 15.0),
                      title: Text('hello'),
                    ),
                  );
                })),
        Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
              ),
              Container(
                  margin: const EdgeInsets.only(
                      left: 15.0, bottom: 50.0, top: 15.0),
                  child: RaisedButton(
                      color: Colors.lightBlue[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(15),
                      elevation: 8,
                      child: Text("Validate", style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/password');
                      }))
              ],
          ),
        ),
      ],
    ));
  }
}
