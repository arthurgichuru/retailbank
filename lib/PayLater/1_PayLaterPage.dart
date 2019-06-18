import 'package:flutter/material.dart';
import 'package:myreg/SendMoney/3_SendMoneyOneTimePin.dart';
import 'package:myreg/PersonalProductsPages/0_PersonalProductsMainPage.dart';
import 'package:myreg/PayLater/2_PayLaterDealConfig.dart';

class PayLater extends StatefulWidget{

  _PayLater createState()=> _PayLater();
}

class _PayLater extends State<PayLater> {

  List _PayLaterMerchants = [
    "WOOLWORTHS",
    "CARREFOUR",
    "MTN",
    "JUMIA"
  ];

  List<DropdownMenuItem<String>>_dropDownMenuItems;

  String _currentPayLaterMerchant;


  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentPayLaterMerchant = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String tvprovider in _PayLaterMerchants) {
      items.add(
          new DropdownMenuItem(
              value: tvprovider, child: new Text(tvprovider)));
    }
    return items;
  }


  @override
  Widget build(BuildContext context) {

    //DropDown

    final DropDownMerchants = Container(
      margin: EdgeInsets.all(10),
      width: 80.0,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.grey)
      ),
      child: Padding(padding: const EdgeInsets.all(10),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            value: _currentPayLaterMerchant,
            items: _dropDownMenuItems,
            onChanged: changedDropDownItem,
          ),
        ),
      ),
    );



    //InvoiceNumberWithBiller
    final InvoiceNumberWithBiller = Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 70,
          width: 310,
          child: TextFormField(
            maxLength: 6,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(Icons.apps, color: Colors.deepOrange,),
              ),
              helperText: 'Invoice Number from merchants in the program',
              labelText: 'Invoice Number',
            ),
          ),
        )
    );



    //Amount
    final PaylaterAmount = Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 70,
          width: 310,
          child: TextFormField(
            maxLength: 6,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(Icons.monetization_on, color: Colors.deepOrange,),
              ),
              helperText: 'Charge UGX: 1000.00',
              labelText: 'Amount',
            ),
          ),
        )
    );


    //Description Text
    final descriptionText = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 50.0,
            child: new Text('Pay Later with participating merchants.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight:
                FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
        ]
    );


    //Next Button

    final BillerPayButton = new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 250.0,
                height: 40.0,
                child: new RaisedButton(
                    child: const Text(
                      'PAY', style: TextStyle(color: Colors.black),),
                    elevation: 4.0,
                    color: Color(0xFFFFBE01),
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),),
                    onPressed: () {

                     Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => PayLaterDealConfig()));


                    }),
              ),
            ],
          ),
        ),
      ),
    );


    return MaterialApp(
      title: 'PayLater',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Pay Later', style: TextStyle(color: Colors.black), ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black,),
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
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10, width: 300,),
                  descriptionText,
                  SizedBox(height: 10, width: 300,),
                  DropDownMerchants,
                  SizedBox(height: 30, width: 310,),
                  InvoiceNumberWithBiller,
                  SizedBox(height: 20, width: 310,),
                  PaylaterAmount,
                  SizedBox(height: 10, width: 300,),
                  BillerPayButton

                ],
              )
          ),
        ),
      ),
    );
  }

  void changedDropDownItem(String selectedDocument){
    setState(() {
      _currentPayLaterMerchant = selectedDocument;
    });
  }
}




