import 'package:flutter/material.dart';

class CustomerType extends StatefulWidget {
  _CustomerType createState() => _CustomerType();
}

class _CustomerType extends State<CustomerType> {
  int selectedRadio;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedRadio = 1;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
//Business Field
    final BusinessRadio = Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Radio(
              value: 1,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val);
              }),
          Text(
            'My Personal Account',
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Radio(
              value: 2,
              groupValue: selectedRadio,
              onChanged: (val) {
                setSelectedRadio(val);
              }
              //value: 1,
              ),
          Text(
            'My Personal Business Account',
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: Radio(
                value: 3,
                groupValue: selectedRadio,
                onChanged: (val) {
                  setSelectedRadio(val);
                }
                //value: 2,
                ),
          ),
          Text(
            'My Registered Business Account',
            style: TextStyle(fontSize: 15.0),
          ),
        ],
      ),
    ]);

    final CustomerTypeButton = Center(
      child: IntrinsicWidth(
          child: SizedBox(
        height: 40,
        width: 250,
        child: RaisedButton(
            child: const Text('CONTINUE'),
            elevation: 4.0,
            splashColor: Colors.white,
            color: Color(0xFFFFBE01),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () {
              if (selectedRadio == 1) {
                Navigator.pushNamed(context, '/1_PhonePage');
              } else {
                if (selectedRadio == 2) {
                  Navigator.pushNamed(context, '/1_PhonePage');
                } else {
                  if (selectedRadio == 3) {
                    Navigator.pushNamed(context, '/1_PhonePage');
                  }
                }
              }
            }),
      )),
    );

    return MaterialApp(
      title: 'CustomerType',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            'Select Account',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(top: 75, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  BusinessRadio,
                  SizedBox(
                    height: 70,
                    width: 300,
                  ),
                  CustomerTypeButton
                ],
              )),
        ),
      ),
    );
  }
}
