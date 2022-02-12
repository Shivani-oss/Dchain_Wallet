import 'package:flutter/material.dart';

class Import extends StatelessWidget {
  const Import({Key? key}) : super(key: key);

  @override
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
        Container(
          margin: new EdgeInsets.fromLTRB(15, 40, 0, 0),
          child: Text('How do you want to import your wallet',
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.headline1),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 6.0),
                    child: Card(
                      child: ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/importprivatekey');
                          },
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text("From a recovery phrase", style: TextStyle(fontSize: 20)),
                          ),
                          subtitle: Text('A combination of 12 words'),
                          trailing: Icon(Icons.arrow_forward_rounded)),
                    ),
                  );
                }))
      ],
    ));
  }
}
