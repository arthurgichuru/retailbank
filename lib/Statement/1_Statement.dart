
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:myreg/PersonalProductsPages/0_PersonalProductsMainPage.dart';


class Statements extends StatefulWidget {
  _Statements createState() => _Statements();
}

class _Statements extends State<Statements> {

  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future<Null> _selectDate(BuildContext context) async{
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2019)
    );

    if(picked==null && picked != _date){
      print('Date Selected: ${_date.toString()}');

      setState(() {
        _date = picked;
      });
    }
  }


  //First Name
  final FirstName = SizedBox(
    height: 70,
    width: 300,
    child: TextField(
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

  //FROM DATE
  final LastName = SizedBox(
    height: 70,
    width: 300,
    child: TextField(
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

  //TODATE
  final descriptionText = new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 250.0,
          height: 50.0,
          child: new Text('Select Date.',
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

          ],
        ),
      ),
    ),
  );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Statement', style: TextStyle(color: Colors.black),),
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
      body: ListView(
        children: <Widget>[
          Center(
          child:Text('Implement date time picker')
      ),
        ],
      ),
    );
  }
}
