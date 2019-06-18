import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:myreg/SignUpPages_Personal/4_CustomerIdentity.dart';
import 'package:myreg/SignUpPages_Personal/4_CustomerIdentity.dart';

class CustomerNames extends StatefulWidget{



  _CustomerNames createState()=> _CustomerNames();
}

class _CustomerNames extends State<CustomerNames>{

//Set up variables to hold the controller
  var _firstNameController = new TextEditingController();
  var _lastNameController = new TextEditingController();




  @override
  Widget build(BuildContext context) {

    //First Name
    final FirstName = SizedBox(
      height: 70,
      width: 300,
      child: TextField(
        //map the controller so as to pull out text
        controller: _firstNameController,
        keyboardType: TextInputType.text,
        maxLength: 30,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          labelText: 'First Name',
            helperText: 'Names as per ID'
        ),
      ),
    );

    //First Name
    final LastName = SizedBox(
      height: 70,
      width: 300,
      child: TextField(
        //map the controller so as to pull out text
        controller: _lastNameController,
        keyboardType: TextInputType.text,
        maxLength: 30,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          labelText: 'Second Name',
          helperText: 'Names as per ID'
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
            child: new Text('Key in your Names.',
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

    final CustomerNameNextButton = new Container(
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context)=> CustomerIdentity(fName: _firstNameController.text , lastName:_lastNameController.text)
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );



    return MaterialApp(
      title: 'CustomerNames',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Customer Names', style: TextStyle(color:Colors.black),),
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
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 20,width: 300,),
                  descriptionText,
                  SizedBox(height: 10,width: 300,),
                  FirstName,
                  SizedBox(height: 30,width: 300,),
                  LastName,
                  SizedBox(height: 20,width: 300,),
                  CustomerNameNextButton
                ],
              )
          ),
        ),
      ),
    );
  }
}