import 'package:flutter/material.dart';
import 'package:myreg/PersonalLoan/4_30dayPersonalLoanDealConfigPage.dart';
import 'package:myreg/PersonalProductsPages/0_PersonalProductsMainPage.dart';

class PursposePersonalLoan30day extends StatefulWidget {
  _PursposePersonalLoan30day createState() => _PursposePersonalLoan30day();
}

class _PursposePersonalLoan30day extends State<PursposePersonalLoan30day> {
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
    //Description Text
    final descriptionText = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 50.0,
            child: new Text(
              'Please enter a purpose for the loan.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
        ]);

//PursonalLoanPurposeRadioButtons
    final PersonalLoanPurposeRadio = Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.home,
                color: Colors.amber,
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: <Widget>[
              Text(
                'Home',
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            children: <Widget>[
              Radio(
                  value: 1,
                  groupValue: selectedRadio,
                  onChanged: (val) {
                    setSelectedRadio(val);
                  }),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.directions_car,
                color: Colors.amber,
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: <Widget>[
              Text(
                'Car',
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          SizedBox(
            width: 118,
          ),
          Column(
            children: <Widget>[
              Radio(
                  value: 2,
                  groupValue: selectedRadio,
                  onChanged: (val) {
                    setSelectedRadio(val);
                  }),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.school,
                color: Colors.amber,
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: <Widget>[
              Text(
                'Mortgage',
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          SizedBox(
            width: 75,
          ),
          Column(
            children: <Widget>[
              Radio(
                  value: 3,
                  groupValue: selectedRadio,
                  onChanged: (val) {
                    setSelectedRadio(val);
                  }),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.local_hospital,
                color: Colors.amber,
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: <Widget>[
              Text(
                'Medical Care',
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          SizedBox(
            width: 53,
          ),
          Column(
            children: <Widget>[
              Radio(
                  value: 4,
                  groupValue: selectedRadio,
                  onChanged: (val) {
                    setSelectedRadio(val);
                  }),
            ],
          ),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.amber,
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: <Widget>[
              Text(
                'Wedding',
                style: TextStyle(fontSize: 15.0),
              ),
            ],
          ),
          SizedBox(
            width: 83,
          ),
          Column(
            children: <Widget>[
              Radio(
                  value: 5,
                  groupValue: selectedRadio,
                  onChanged: (val) {
                    setSelectedRadio(val);
                  }),
            ],
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

              Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> PersonalLoanDealConfig()));

              /*    if (selectedRadio == 1) {
                    Navigator.pushNamed(context, '/1_PhonePage');
                  } else {
                    if (selectedRadio == 2) {
                      Navigator.pushNamed(context, '/1_PhonePage');
                    } else {
                      if (selectedRadio == 3) {
                        Navigator.pushNamed(context, '/1_PhonePage');
                      }
                    }
                  }*/
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
            'Request Loan',
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
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.cancel,),
              onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> PersonalProductsMainPage()));
              },
            )
          ],
          backgroundColor: Colors.amber,
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  descriptionText,
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  PersonalLoanPurposeRadio,
                  SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 20,
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
