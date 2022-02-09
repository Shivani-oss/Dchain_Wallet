import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WalletImport extends StatelessWidget {
  const WalletImport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 60, bottom: 10),
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 20, top: 50, bottom: 0),
                  child: SvgPicture.asset('assets/check.svg',
                      height: 50.0, width: 50.0, fit: BoxFit.scaleDown))
            ],
          ),
        ),
        Container(
          margin: new EdgeInsets.fromLTRB(15, 30, 20, 0),
          child: Text("Your wallet was imported",
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.headline1),
        ),
        Container(
          margin: new EdgeInsets.fromLTRB(15, 15, 10, 0),
          child: Text(
              "Next, we will scan the blockchain for accounts and addresse you have previously used. This may take a moment, but you can already continue",
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/password');
                      },
                      color: Colors.lightBlue[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(15),
                      elevation: 8,
                      child: Row(children: [
                         Icon(Icons.check),
                         Text("Continue", style: TextStyle(fontSize: 20)),
                        ],)
                     )
                  )
            ],
          ),
        ),
      ],
    ));
  }
}
