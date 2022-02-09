import 'package:flutter/material.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  String name = '';
  String address = '';
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
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: new EdgeInsets.fromLTRB(15, 25, 0, 15),
                    child: Text("Add a contact",
                        style: Theme.of(context).textTheme.headline1),
                  ),
                ],
              ),
              Container(
                margin: new EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Form(
                    child: Column(
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5.0),
                          Text('Name'),
                          TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '....',
                              ),
                              style: TextStyle(fontSize: 20.0),
                              obscureText: true,
                              onChanged: (val) {
                                setState(() => name = val);
                              }),
                          SizedBox(height: 20.0),
                          Text('Address'),
                          TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '....',
                              ),
                              style: TextStyle(fontSize: 20.0),
                              obscureText: true,
                              onChanged: (val) {
                                setState(() => address = val);
                              }),
                        ])
                  ],
                )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                            left: 15.0, bottom: 15.0, top: 15.0),
                        child: RaisedButton(
                            color: Colors.lightBlue[400],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(15),
                            elevation: 8,
                            child: Text("Save",
                                style: TextStyle(fontSize: 20)),
                            onPressed: () {
                            
                                Navigator.pushNamed(context, '/contactpage');
                             
                            }))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
