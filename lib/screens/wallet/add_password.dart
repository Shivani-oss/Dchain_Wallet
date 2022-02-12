import 'package:flutter/material.dart';

class AddPassword extends StatelessWidget {
  const AddPassword({Key? key}) : super(key: key);

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
          child: Text("Now let's add a password",
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.headline1),
        ),
        Container(
          margin: new EdgeInsets.fromLTRB(15, 15, 20, 0),
          child: Text(
              "Now let's set a password for your wallet. You need it to log in make transactions",
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
                  margin: const EdgeInsets.only(
                      left: 15.0, bottom: 15.0, top: 15.0),
                  child: RaisedButton(
                      color: Colors.lightBlue[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(15),
                      elevation: 8,
                      child:
                          Text("Add Password", style: TextStyle(fontSize: 20)),
                      onPressed: () {
                          Navigator.pushNamed(context, '/savepassowrd');
                      }))
            ],
          ),
        ),
      ],
    ));
  }
}
