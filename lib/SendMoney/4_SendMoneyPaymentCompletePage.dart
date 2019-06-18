import 'package:flutter/material.dart';
import 'package:myreg/PersonalProductsPages/0_PersonalProductsMainPage.dart';

class SendMoneyPaymentComplete extends StatefulWidget{

  _SendMoneyPaymentComplete createState()=> _SendMoneyPaymentComplete();
}

class _SendMoneyPaymentComplete extends State<SendMoneyPaymentComplete>{
  @override
  Widget build(BuildContext context) {

    //CompleteSetup
    final CompleteSetUp = CircleAvatar(
      maxRadius: 70,
      backgroundColor: Colors.amber,
      child: Icon(Icons.thumb_up, size: 40.0, color: Colors.black,),
    );




    //Description Text
    final descriptionText = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 100.0,
            child: new Text('Congratulations, Payment has been sent.',
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



    //Log In Button

    final SendMoneyCompleteButton = new Container(
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
                    child: const Text('FINISH', style: TextStyle(color: Colors.black),),
                    elevation: 4.0,
                    color: Color(0xFFFFBE01),
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0),),
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> PersonalProductsMainPage()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );



    return MaterialApp(
      title: 'Confirmed',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Confimed', style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10,width: 300,),
                  descriptionText,
                  SizedBox(height: 10,width: 300,),
                  CompleteSetUp,
                  SizedBox(height: 60,width: 300,),
                  SendMoneyCompleteButton
                ],
              )
          ),
        ),
      ),
    );
  }
}