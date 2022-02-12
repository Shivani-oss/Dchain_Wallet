import 'package:flutter/material.dart';

class TransactionAmount extends StatelessWidget {
  final String amount;
  final String text;
  final Color color;
  const TransactionAmount(
      {required this.amount, required this.text, required this.color});
  @override
  Widget build(BuildContext context) {
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
}
