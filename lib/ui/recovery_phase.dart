import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RecoveryPhase extends StatefulWidget {
  const RecoveryPhase({Key? key}) : super(key: key);

  @override
  State<RecoveryPhase> createState() => _RecoveryPhaseState();
}

class _RecoveryPhaseState extends State<RecoveryPhase> {
  @override
  Widget build(BuildContext context) {
    List<String> wallet = [
      '1. post',
      '2. viable',
      '3. hospital',
      '4. gloom',
      '5. alcohol',
      '6. ocean',
     
    ];

    List<String> wallet2= [
      '7. police',
      '8. month',
      '9. stamp',
      '10. claim',
      '11. heart',
      '12. month',
     
    ]; 
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
          child: Text('This is your recovery phrase',
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.headline1),
        ),
        Container(
          margin: new EdgeInsets.fromLTRB(15, 20, 10, 10),
          child: Text(
              'Please make sure to write it down exactly as shown here.',
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.bodyText2),
        ),
        Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Column(
                        children: List.generate(wallet.length, (index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(wallet[index]),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                                endIndent: 10,
                                indent: 30,
                              ),
                            ],
                          );
                        })))),
           Expanded(
                flex: 3,
                child: Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Column(
                        children: List.generate(wallet2.length, (index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(wallet2[index], textAlign: TextAlign.start,),
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                                endIndent: 10,
                                indent: 30,
                              ),
                            ],
                          );
                        })))),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(
                      left: 15.0, bottom: 50.0, top: 15.0),
                  child: RaisedButton(
                      color: Colors.lightBlue[400],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(15),
                      elevation: 8,
                      child: Text("I've written it down",
                          style: TextStyle(fontSize: 20)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/double');
                      }))
            ],
          ),
        ),
      ],
    ));
  }
}
