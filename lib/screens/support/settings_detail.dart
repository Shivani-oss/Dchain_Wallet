import 'package:flutter/material.dart';

class SettingsDetail extends StatelessWidget {
  final String title;
  final String subtitle;

  const SettingsDetail({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
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
                        else if(title == 'Peter Parker'){
                           Navigator.pushNamed(context, '/indcontact');
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
}
