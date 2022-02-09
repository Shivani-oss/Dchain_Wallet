import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget TransactionsOverview(
      {required String title,
      required String subtitle,
      required String text,
      required Color color}) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          child: ListTile(
            onTap: () {},
            leading: Icon(Icons.circle, color: color, size: 10.0,),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(title, style: TextStyle(fontSize: 19)),
            ),
            subtitle: Text(subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                )),
          ),
        ),
        Row(
          children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: RaisedButton(
                onPressed: () {},
                color: Colors.lightBlue[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.all(6),
                elevation: 5,
                child: Text(text),
            ),
              )
          ],
        ),
        Divider(
            color: Colors.white,
            indent: 45,
          thickness: 0.8,
        ),
      Padding(padding: EdgeInsets.all(3))
      ],
    );
  }

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
                iconSize: 40,
                padding: EdgeInsets.all(20),
                icon: SvgPicture.asset('assets/logo.svg'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                padding: EdgeInsets.all(20),
                icon: Icon(Icons.settings_outlined),
                onPressed: () {
                   Navigator.pushNamed(context, '/indi');
                },
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
          child: Card(
            child: ListTile(
                onTap: () {
                   Navigator.pushNamed(context, '/personalwallet');
                },
                minVerticalPadding: 10,
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text('WALLET',
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ),
                subtitle: Text('Personal',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                trailing: Icon(Icons.arrow_forward_ios)),
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 0, 5),
                  child: Text('BALANCE',
                      style: TextStyle(fontSize: 18, color: Colors.grey)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                  child: Text('3.56471031',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
        Divider(
          color: Colors.white,
          thickness: 0.2,
        ),
        Column(
          children: [
            TransactionsOverview(
                title: "Sent 15 BTC (\$867,43) to Domino's Pizza",
                subtitle: 'Large pepperoini pizza order - 2 hours ago',
                text: 'Food & groceries',
                color: Colors.orange),
                 TransactionsOverview(
                title: "Recieived 15 xmr (\$867.43) to Umbrella Crop",
                subtitle: 'May 2020 salary',
                text: 'Salary',
                color: Colors.green),
          ],
        )
      ],
    ));
  }
}
