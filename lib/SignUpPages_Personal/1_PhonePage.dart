import 'package:flutter/material.dart';

class PhonePage extends StatefulWidget{

  _PhonePage createState()=> _PhonePage();
}

class _PhonePage extends State<PhonePage>{
  @override
  Widget build(BuildContext context) {

    /*
   //Country Field
    final Country = SizedBox(
      height: 0,
      width: 100,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            labelText: 'Country',
        ),
      ),
    );

     */

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


    //Description Text
    final descriptionText = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 50.0,
            child: new Text('Key in your phone number.',
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
/*
    final CountryPhoneNumber = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
       Flexible(
         child: PhoneNumber,
       )
      ],
    );
*/
    //Next Button

    final PhoneNextButton = new Container(
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

                      Navigator.pushNamed(context, '/2_OneTimePin');
                    }),

              ),
            ],
          ),
        ),
      ),
    );



    return MaterialApp(
     title: 'EnterPhone',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Enter Phone', style: TextStyle(color: Colors.black),),
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
                 SizedBox(height: 20,width: 300,),
                 PhoneNumber,
                 SizedBox(height: 70,width: 300,),
                 PhoneNextButton
               ],
             )
          ),
        ),
      ),
    );
  }
}