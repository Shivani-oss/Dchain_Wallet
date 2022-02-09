import 'package:flutter/material.dart';

class ChoosePassword extends StatefulWidget {
  const ChoosePassword({Key? key}) : super(key: key);

  @override
  _ChoosePasswordState createState() => _ChoosePasswordState();
}

class _ChoosePasswordState extends State<ChoosePassword> {
  @override
  String password = '';
  String confpassword = '';

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 40, bottom: 0),
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
        Row(
          children: [
            Container(
              margin: new EdgeInsets.fromLTRB(15, 40, 0, 0),
              child: Text("Choose your password",
                  textDirection: TextDirection.ltr,
                  style: Theme.of(context).textTheme.headline1),
            ),
          ],
        ),
        Container(
          margin: new EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Form(
              child: Column(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.0),
                    Text('Choose a password'),
                    TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your password....',
                        ),
                        style: TextStyle(fontSize: 20.0),
                        obscureText: true,
                        onChanged: (val) {
                          setState(() => password = val);
                        }),
                    SizedBox(height: 10.0),
                    Text('Enter your password again'),
                    TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Your password....',
                        ),
                        style: TextStyle(fontSize: 20.0),
                        obscureText: true,
                        onChanged: (val) {
                          setState(() => confpassword = val);
                        }),
                  ])
            ],
          )),
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
                          Text("Save password", style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        if (password == confpassword &&
                            password != '' &&
                            confpassword != '') {
                          Navigator.pushNamed(context, '/walletready');
                        } else {}
                      }))
            ],
          ),
        ),
      ],
    ));
  }
}
