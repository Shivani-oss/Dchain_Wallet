import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List wallet = [
      'Create a new wallet',
      'Restore wallet from keys or mnemonic seed'
    ];
    List icons = ['assets/create.svg', 'assets/restore.svg'];
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
        Container(
          margin: new EdgeInsets.fromLTRB(15, 40, 0, 0),
          child: Text('How do you want to start?',
              textDirection: TextDirection.ltr,
              style: Theme.of(context).textTheme.headline1),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: wallet.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 1.0, horizontal: 4.0),
                    child: Card(
                      child: ListTile(
                          onTap: () {
                            if (index == 0) {
                              Navigator.pushNamed(context, '/recovery');
                            } else {
                              Navigator.pushNamed(context, '/import');
                            }
                          },
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          title: Text(wallet[index]),
                          leading: SvgPicture.asset(icons[index],
                              height: 50.0, width: 50.0, fit: BoxFit.scaleDown),
                          trailing: Icon(Icons.arrow_forward_rounded)),
                    ),
                  );
                }))
      ],
    ));
  }
}
