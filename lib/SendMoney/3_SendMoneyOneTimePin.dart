import 'package:flutter/material.dart';
import 'package:myreg/SendMoney/4_SendMoneyPaymentCompletePage.dart';

class SendMoneyOneTimePin extends StatefulWidget{

  _SendMoneyOneTimePin createState()=> _SendMoneyOneTimePin();
}

class _SendMoneyOneTimePin extends State<SendMoneyOneTimePin>{
  @override
  Widget build(BuildContext context) {

    //Pin 1 Field
    final PinOne = SizedBox(
      height: 60,
      width: 100,
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          //labelText: '1',
        ),
      ),
    );

    //PinTwo
    final PinTwo = SizedBox(
      height: 60,
      width: 100,
      child: TextFormField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );

    //PinThree
    final PinThree = SizedBox(
      height: 60,
      width: 100,
      child: TextFormField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );

    //PinFour
    final PinFour = SizedBox(
      height: 60,
      width: 100,
      child: TextFormField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );

    //Description Text
    final descriptionText = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 100.0,
            child: new Text('Key in One Time Pin sent through SMS.',
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


    //Together

    final CountryPhoneNumber = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(width: 10.0,),
        Flexible(
          child:  PinOne,
          flex: 1,
        ),
        SizedBox(width: 10.0,),
        Flexible(
          child: PinTwo,
          flex: 1,
        ),
        SizedBox(width: 10.0,),
        Flexible(
          child: PinThree,
          flex: 1,
        ),
        SizedBox(width: 10.0,),
        Flexible(
          child: PinFour,
          flex: 1,
        )
      ],
    );

    //Next Button

    final OneTimePinNextButton = new Container(
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
                    child: const Text('NEXT', style: TextStyle(color: Colors.black),),
                    elevation: 4.0,
                    color: Color(0xFFFFBE01),
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0),),
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> SendMoneyPaymentComplete()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );



    return MaterialApp(
      title: 'EnterOTP',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Enter OTP', style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black,),
            onPressed: (){
              Navigator.pop(context,false);
            },
          ),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(top: 75, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10,width: 300,),
                  descriptionText,
                  SizedBox(height: 10,width: 300,),
                  CountryPhoneNumber,
                  SizedBox(height: 70,width: 300,),
                  OneTimePinNextButton
                ],
              )
          ),
        ),
      ),
    );
  }
}