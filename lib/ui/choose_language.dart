import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChooseLanguage extends StatefulWidget {
  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  List languages = ['English', 'Hindi'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          margin: new EdgeInsets.fromLTRB(0, 110, 0, 0),
          child: Text('Choose Your Language',
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.headline1),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 1.0, horizontal: 4.0),
                    child: Card(
                      child: ListTile(
                          onTap: () {
                            if (languages[index] == 'English') {
                              Navigator.pushNamed(context, '/loading');
                            } 
                          },
                          title: Text(languages[index]),
                          trailing: Icon(Icons.arrow_forward_rounded)),
                    ),
                  );
                }))
      ],
    ));
  }
}
