import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dchain/screens/support/settings_detail.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Row(
                        children: [
                          Text('Add contact', textAlign: TextAlign.end),
                          IconButton(
                            icon: Icon(Icons.add_circle_outline_rounded),
                            padding: EdgeInsets.all(2),
                            onPressed: () {
                              Navigator.pushNamed(context, '/addcontact');
                            },
                          ),
                        ],
                      )
                    ],
                  
                
              
            ),
          ),
          Row(
            children: [
              Container(
                margin: new EdgeInsets.fromLTRB(15, 25, 0, 15),
                child: Text("Contacts",
                    style: Theme.of(context).textTheme.headline1),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
            child: Divider(
              color: Colors.grey,
              thickness: 0.8,
            ),
          ),
          SettingsDetail(title: 'Peter Parker', subtitle: 'fhjs....8ehj'),
          SettingsDetail(title: 'Tylor Swift', subtitle: '98n...83zg'),
        ],
      ),
    );
  }
}
