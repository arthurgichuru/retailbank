import 'package:flutter/material.dart';
import 'package:myreg/SendMoney/3_SendMoneyOneTimePin.dart';
import 'package:myreg/PersonalProductsPages/0_PersonalProductsMainPage.dart';

class SendMoneyToMobile extends StatefulWidget{

  _SendMoneyToMobile createState()=> _SendMoneyToMobile();
}

class _SendMoneyToMobile extends State<SendMoneyToMobile>{

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context)=> AlertDialog(
          title: Text('Do you want to exit the App?'),
          actions: <Widget>[
            FlatButton(
              child: Text('NO'),
              onPressed: ()=> Navigator.pop(context,true),
            ),
            FlatButton(
              child: Text('YES'),
              onPressed: ()=> Navigator.pop(context,true),
            ),
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {

    //Phone Number
    final SendMoneyPhoneNumber = Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 70,
          width: 300,
          child: TextFormField(
            maxLength: 10,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.all(0.0),
                child: Icon(Icons.person, color: Colors.deepOrange,),
              ),
              labelText: 'Phone',
              helperText: 'Phone number you are sending to',
            ),
          ),
        )
    );

    //Amount
    final SendMoneyAmount = Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 70,
          width: 300,
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
              helperText: 'Charge UGX: 20.0',
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
            child: new Text('Send Money To Mobile.',
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

    final SendMoneyPayButton = new Container(
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
                    child: const Text('PAY', style: TextStyle(color: Colors.black),),
                    elevation: 4.0,
                    color: Color(0xFFFFBE01),
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0),),
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> SendMoneyOneTimePin()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );



    return new WillPopScope(
      onWillPop: _onBackPressed,
       child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Send Money', style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: (){
              Navigator.pop(context,false);
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
                  SizedBox(height: 20,width: 300,),
                  descriptionText,
                  SizedBox(height: 10,width: 300,),
                  SendMoneyPhoneNumber,
                  SizedBox(height: 30,width: 300,),
                  SendMoneyAmount,
                  SizedBox(height: 20,width: 300,),
                  SendMoneyPayButton
                ],
              )
          ),
        ),
      ),
    );

  }

}