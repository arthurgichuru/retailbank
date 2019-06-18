import 'package:flutter/material.dart';

class CustomerEmail extends StatefulWidget{

  _CustomerEmail createState()=> _CustomerEmail();
}

class _CustomerEmail extends State<CustomerEmail>{
  @override
  Widget build(BuildContext context) {

    //Customer Email
    final EmailAddress = SizedBox(
      height: 70,
      width: 300,
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        maxLength: 30,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            labelText: 'Email',
            helperText: 'Ensure your email is correct'
        ),
      ),
    );



    //Description Text
    final descriptionText = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 50.0,
            child: new Text('Key in your email address.',
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

    final EmailAddressNextButton = new Container(
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
                      Navigator.pushNamed(context, '/6_CustomerPassword');
                    }),
              ),
            ],
          ),
        ),
      ),
    );



    return MaterialApp(
      title: 'CustomerEmail',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Email', style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black,),
            onPressed: () {
              Navigator.pop(context, false);
            },
          ),
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
                  EmailAddress,
                  SizedBox(height: 100,width: 300,),
                  EmailAddressNextButton
                ],
              )
          ),
        ),
      ),
    );
  }
}