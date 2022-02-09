import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List<String> security = [
    'Change send mode PIN',
    'Change private mode PIN',
    'Change full mode PIN',
    'Unlock by fingerprint',
    'Unlock by Face ID',
    'Delete all data',
  ];

  Widget SettingsDetail({required String title, required String subtitle}) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Row(
                  children: [
                    Text(subtitle, textAlign: TextAlign.end),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                         if (title == 'Addresses') {
                          Navigator.pushNamed(context, '/walletoption');
                        }
                      },
                    ),
                  ],
                )
              ],
            ),
            Divider(
              color: Colors.white,
              thickness: 0.8,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, bottom: 0, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                margin: new EdgeInsets.fromLTRB(15, 25, 0, 15),
                child: Text("Settings",
                    style: Theme.of(context).textTheme.headline1),
              ),
            ],
          ),
          SettingsDetail(title: 'Addresses', subtitle: '5'),
          SettingsDetail(title: 'Transaction fees', subtitle: '0.00012'),
          SettingsDetail(title: 'Recover Wallet', subtitle: ''),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 5),
            child: Row(
              children: [
                Text('Security', style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                      children: List.generate(security.length, (index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SettingsDetail(title: security[index], subtitle: ''),
                      ],
                    );
                  }))))
        ],
      ),
    );
  }
}
