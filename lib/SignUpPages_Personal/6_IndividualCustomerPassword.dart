import 'package:flutter/material.dart';

class CustomerPassword extends StatefulWidget{

  _CustomerPassword createState()=> _CustomerPassword();
}

class _CustomerPassword extends State<CustomerPassword>{
  @override
  Widget build(BuildContext context) {

    //Customer PassWord
    final CustomerPassword = SizedBox(
      height: 70,
      width: 300,
      child: TextField(
        keyboardType: TextInputType.number,
        obscureText: true,
        maxLength: 4,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            labelText: 'Password',
            hintText: 'Set Up Password',
            helperText: 'Secure your account'
        ),
      ),
    );


    //Customer PassWord
    final CustomerPasswordConfirm = SizedBox(
      height: 70,
      width: 300,
      child: TextField(
        keyboardType: TextInputType.number,
        obscureText: true,
        maxLength: 4,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            labelText: 'Confirm Password',
            helperText: 'Repeat Password'
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
            child: new Text('Choose a password.',
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

    final Passwords = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(width: 10.0, height: 10,),
        CustomerPassword,
        SizedBox(width: 10.0, height: 20,),
        CustomerPasswordConfirm,

      ],
    );

    //Next Button

    final PasswordNextButton = new Container(
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
                    child: const Text('CREATE ACCOUNT', style: TextStyle(color: Colors.black),),
                    elevation: 4.0,
                    color: Color(0xFFFFBE01),
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0),),
                    onPressed: () {
                      Navigator.pushNamed(context, '/7_CompleteAccountSetUp');
                    }),
              ),
            ],
          ),
        ),
      ),
    );



    return MaterialApp(
      title: 'Password',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Password', style: TextStyle(color: Colors.black),),
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
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10,width: 300,),
                  descriptionText,
                  SizedBox(height: 20,width: 300,),
                  Passwords,
                  SizedBox(height: 30,width: 300,),
                  PasswordNextButton
                ],
              )
          ),
        ),
      ),
    );
  }
}