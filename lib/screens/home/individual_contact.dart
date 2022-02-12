import 'package:flutter/material.dart';
import 'package:wallet_dchain/screens/support/transaction_amount.dart';

class IndividualContact extends StatefulWidget {
  const IndividualContact({Key? key}) : super(key: key);

  @override
  _IndividualContactState createState() => _IndividualContactState();
}

class _IndividualContactState extends State<IndividualContact> {

  

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
              TransactionAmount(
                  amount: "-0.07896730",
                  text: '10 min ago',
                  color: Colors.orange),
              TransactionAmount(
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
