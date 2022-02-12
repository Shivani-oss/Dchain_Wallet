import 'package:flutter/material.dart';

class ImportPrivateKey extends StatefulWidget {
  const ImportPrivateKey({Key? key}) : super(key: key);

  @override
  State<ImportPrivateKey> createState() => _ImportPrivateKeyState();
}

class _ImportPrivateKeyState extends State<ImportPrivateKey> {
  @override
  Widget build(BuildContext context) {
    String private_mneumonics = "";
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
        Container(
          margin: new EdgeInsets.fromLTRB(10, 35, 0, 0),
          child: Text('Enter your 12 word mneumoics',
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.headline1),
        ),
        Expanded(
          child: Form(
              child: Column(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(9.0, 0.0, 0.0, 0.0),
                      child: Text('Your mneumonics with space'),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                      child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '..',
                          ),
                          style: TextStyle(fontSize: 20.0),
                          onChanged: (val) {
                            setState(() => private_mneumonics = val);
                          }),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/walletimport');
                          },
                          color: Colors.lightBlue[400],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.all(15),
                          elevation: 8,
                          child: Text("Continue", style: TextStyle(fontSize: 20)),
                            
                        ),
                   )
                  ])
                  
            ],
          )),
        )
      ],
    ));
  }
}
