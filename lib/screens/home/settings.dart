import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dchain/screens/support/settings_detail.dart';

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
