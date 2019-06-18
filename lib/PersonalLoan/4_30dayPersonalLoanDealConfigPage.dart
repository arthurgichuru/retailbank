import 'package:flutter/material.dart';
import 'package:myreg/PersonalProductsPages/0_PersonalProductsMainPage.dart';

class PersonalLoanDealConfig extends StatefulWidget{

  _PersonalLoanDealConfig createState()=> _PersonalLoanDealConfig();

}

class _PersonalLoanDealConfig extends State<PersonalLoanDealConfig>{

  int _value = 6;

  @override
  Widget build(BuildContext context) {



    //Description Text
    final descriptionText = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 50.0,
            child: new Text('How long do you need the loan for?',
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

    final DealConfigButton = new Container(
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
                    child: const Text('REQUEST', style: TextStyle(color: Colors.black),),
                    elevation: 4.0,
                    color: Color(0xFFFFBE01),
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0),),
                    onPressed: () {
                      //Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> SendMoneyOneTimePin()));
                    }),
              ),
            ],
          ),
        ),
      ),
    );


    final DealConfigSlider = Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text('0'),
          Expanded(
              child: Slider(
                value: _value.toDouble(),
                min: 1,
                max: 30,
                divisions: 4,
                activeColor: Colors.red,
                inactiveColor: Colors.amber,
                label: 'Week',
                onChanged: (double newValue){
                  setState(() {
                    _value = newValue.round();
                  });
                },
                semanticFormatterCallback: (double newValue ){
                  return '${newValue.round()} UGX';
                },
              )
          ),
          Text('4 Weeks'),
        ],
      ),
    );

    return MaterialApp(
      title: 'DealConfig',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Request Loan', style: TextStyle(color: Colors.black),),
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
        body: Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  descriptionText,
                  SizedBox(height: 50),
                  DealConfigSlider,
                  SizedBox(height: 20),
                  DealConfigButton
                ],
              ),
            )

      )
      ),
    );
  }
}