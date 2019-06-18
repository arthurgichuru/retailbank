import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:myreg/PersonalLoan/2_30dayPersonalLoanRequestAmountPage.dart';
import 'package:myreg/PersonalProductsPages/0_PersonalProductsMainPage.dart';


class MokashPersonalLoansPage extends StatefulWidget{

  _MokashPersonalLoansPage createState()=> _MokashPersonalLoansPage();
}

class _MokashPersonalLoansPage extends State<MokashPersonalLoansPage>{

  @override
  Widget build(BuildContext context) {


    var loanDial = CircularPercentIndicator(
      radius: 200,
      lineWidth: 15,
      percent: 0.5,
      animation: true,
      //header: Text('Your are eligible for up to:', style: TextStyle(fontSize: 14),),
      animationDuration: 1200,
      center: Text('UGX 120,000', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
      footer: Text('Activate your loan today by \n clicking on the button below:', textAlign: TextAlign.center,),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: Color(0xFFFFBE01),
      progressColor: Colors.green,
    );


    final buttonLoan = new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 300.0,
                height: 40.0,
                child: new RaisedButton(
                    child: const Text('REQUEST FOR LOAN'),
                    elevation: 4.0,
                    splashColor: Colors.white,
                    color: Color(0xFFFFBE01),
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0),),
                    onPressed: () {
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> RequestPersonalLoan30day()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
    // TODO: implement build

    //Description Text
    final descriptionText = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 50.0,
            child: new Text('You are eligible for a 30 day personal loan of up to:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight:
                FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
        ]
    );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Loan',
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('30 day Loan', style: TextStyle(color: Colors.black), ),
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
        body: ListView(
          children: <Widget>[
            SizedBox(width: 10, height: 100,),
            descriptionText,
            SizedBox(width: 10, height: 15,),
            loanDial,
            SizedBox(width: 100,height: 30,),
            buttonLoan
          ],
        ),
      ),
    );
  }
}