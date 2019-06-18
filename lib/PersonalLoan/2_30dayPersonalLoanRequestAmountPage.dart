import 'package:flutter/material.dart';
import 'package:myreg/PersonalProductsPages/0_PersonalProductsMainPage.dart';
import 'package:myreg/PersonalLoan/3_30dayPersonalLoanRequestPurposePage.dart';


class RequestPersonalLoan30day extends StatefulWidget{

  _RequestPersonalLoan30day createState()=> _RequestPersonalLoan30day();
}

class _RequestPersonalLoan30day extends State<RequestPersonalLoan30day>{

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

    //LoanAmount
    final RequestLoanAmount = Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 70,
          width: 300,
          child: TextFormField(
            maxLength: 10,
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
              labelText: 'Amount',
              helperText: 'Loan amount you need',
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
            child: new Text('How much do you need?.',
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

    final RequestLoanAmountButton = new Container(
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
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> PursposePersonalLoan30day()));
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
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 20,width: 300,),
                  descriptionText,
                  SizedBox(height: 10,width: 300,),
                  RequestLoanAmount,
                  SizedBox(height: 30,width: 300,),
                  RequestLoanAmountButton,
                ],
              )
          ),
        ),
      ),
    );

  }

}