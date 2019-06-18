import 'package:flutter/material.dart';

class LogInPersonal extends StatefulWidget{

  _LogInPersonal createState()=> _LogInPersonal();
}

class _LogInPersonal extends State<LogInPersonal>{
  @override
  Widget build(BuildContext context) {

    //Country Field
    final PhoneNumber = Padding(
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
                child: Icon(Icons.phone, color: Colors.deepOrange,),
              ),
              labelText: 'Phone',
            ),
          ),
        )
    );


    //Customer PassWord
    final CustomerPassword = Padding(
      padding: EdgeInsets.all(10),
    child:SizedBox(
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
        ),
      ),
    ),
    );

//Log in Button

    final loginButton = new Container(
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
                    child: const Text('LOG IN'),
                    elevation: 4.0,
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0),),
                    onPressed: () {
                      Navigator.pushNamed(context, '/0_PersonalProductsPage');
                    }),
              ),
            ],
          ),
        ),
      ),
    );

    //Branding Text

    final descriptionText = new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 100.0,
            child: new Text('WELCOME.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight:
                FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ]
    );


    return MaterialApp(
      title: 'LandingPage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          child:Padding(
            padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10,width: 300,),
                descriptionText,
                SizedBox(height: 15,width: 300,),
                PhoneNumber,
                SizedBox(height: 5.0,width: 300,),
                CustomerPassword,
              SizedBox(height: 5.0,width: 300,),
              loginButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}