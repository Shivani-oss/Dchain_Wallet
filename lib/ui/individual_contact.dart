import 'package:flutter/material.dart';

class IndividualContact extends StatefulWidget {
  const IndividualContact({Key? key}) : super(key: key);

  @override
  _IndividualContactState createState() => _IndividualContactState();
}

class _IndividualContactState extends State<IndividualContact> {

   Widget TransactionsAmount(
      {required String amount, required String text, required Color color}) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          child: ListTile(
            onTap: () {},
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Icon(
              Icons.circle,
              color: color,
              size: 10.0,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            title: Padding(
              padding: const EdgeInsets.all(0),
              child: Text(amount, style: TextStyle(fontSize: 19)),
            ),
          ),
        ),
        Divider(
          color: Colors.white,
          indent: 45,
          thickness: 0.8,
        )
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
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Row(
                  children: [
                    Text('Edit', textAlign: TextAlign.end),
                    IconButton(
                      icon: Icon(Icons.edit),
                      padding: EdgeInsets.all(2),
                      onPressed: () {
                        
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
                child: Text("Peter Parker",
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
           Column(
            children: [
              TransactionsAmount(
                  amount: "-0.07896730",
                  text: '10 min ago',
                  color: Colors.orange),
              TransactionsAmount(
                  amount: "1.67869789",
                  text: '10 min ago',
                  color: Colors.green),
            ],
          )
        ],
      ),
    );
  }
}
