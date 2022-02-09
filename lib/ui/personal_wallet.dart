import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalWallet extends StatefulWidget {
  const PersonalWallet({Key? key}) : super(key: key);

  @override
  _PersonalWalletState createState() => _PersonalWalletState();
}

class _PersonalWalletState extends State<PersonalWallet> {
  int _currentIndex = 0; 

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
            trailing: Icon(
              Icons.arrow_forward_ios
            ),
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
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.call_split_outlined),
            title: Text('Send'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_received),
            title: Text('Recieve'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 30,
                  padding: EdgeInsets.all(20),
                  icon: Icon(Icons.add_to_photos_sharp),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  iconSize: 40,
                  padding: EdgeInsets.all(20),
                  icon: SvgPicture.asset('assets/logo.svg'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  iconSize: 30,
                  padding: EdgeInsets.all(20),
                  icon: Icon(Icons.line_weight),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
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
             Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          child: ListTile(
            onTap: () {},
            visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            leading: Icon(
              Icons.update,
             ),
            trailing: Icon(
              Icons.arrow_forward_ios
            ),
            title: Padding(
              padding: const EdgeInsets.all(0),
              child: Text('0.278 XMR unconfirmed', style: TextStyle(fontSize: 19)),
            ),
          ),
        ),
        Divider(
          color: Colors.white,
          indent: 45,
          thickness: 0.8,
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
              TransactionsAmount(
                  amount: "-0.07896730",
                  text: '10 min ago',
                  color: Colors.orange),
              TransactionsAmount(
                  amount: "7.19474987",
                  text: '10 min ago',
                  color: Colors.green),
            ],
          )
        ],
      ),
    );
  }
}
