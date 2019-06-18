import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:myreg/PersonalProductsPages/5_PersonalMokashBankPromoPage.dart';
import 'package:myreg/Statement/1_Statement.dart';

class PersonalMokashBankHomePage extends StatefulWidget{

  _PersonalMokashBankHomePage createState()=> _PersonalMokashBankHomePage();
}

class _PersonalMokashBankHomePage extends State<PersonalMokashBankHomePage>{
  @override
  Widget build(BuildContext context) {


    ///Carousel
    Widget MokashBankCarousel = new Container(
      height: 200.0,
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> PersonalMokashBankPromoPage()));
        },

      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          new AssetImage('images/momo1.png'),
          new AssetImage('images/momo2.png'),
          new AssetImage('images/momo3.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
      ),
      ),
    );





    //BankingCard
    final BankingCard = new Card(
      elevation: 10,
        //color: Colors.amber,
        child: Container(
          //height: 150,
          padding: EdgeInsets.only(top: 10, bottom: 0,left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('My Bank:', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18, fontStyle: FontStyle.normal),),
                ],
               ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Current Account:', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.blueGrey ),),
                  SizedBox(width: 10,),
                  Text('UGX 5,000.00', style: TextStyle(color: Colors.black)),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Savings Account:', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.blueGrey ),),
                  SizedBox(width: 10,),
                  Text('UGX 5,000.00', style: TextStyle(color: Colors.black)),
                ],
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('Total Loans:', style: TextStyle(fontWeight:FontWeight.bold , color: Colors.blueGrey),),
                  SizedBox(width: 10,),
                 Text('UGX 25,000.00' , style: TextStyle(color: Colors.black),)
                ],
              ),
              ButtonTheme.bar(
                buttonColor: Colors.black,
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('SETTINGS', style: TextStyle(color: Colors.blue),),
                      onPressed: (){
                        // Todo:Implement Top screen
                      },
                    ),
                    FlatButton(
                      child: const Text('STATEMENT',style: TextStyle(color: Colors.blue),),
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> Statements()));
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
    );




    //MTNCard
    final MyMTNCard = new Card(
      elevation: 10,
      //color: Colors.amber,
      child: Container(
        //height: 180,
        padding: EdgeInsets.only(top: 10, bottom: 0, left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('My MTN:', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18, fontStyle: FontStyle.normal),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Data Balance:', style: TextStyle(fontWeight:FontWeight.bold, color: Colors.blueGrey ),),
                SizedBox(width: 10,),
                Text('5,000.00', style: TextStyle(color: Colors.black)),
              ],
            ),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('SMS:', style: TextStyle(fontWeight:FontWeight.bold , color: Colors.blueGrey),),
                SizedBox(width: 10,),
                Text('Unlimited SMS' , style: TextStyle(color: Colors.black),)
              ],
            ),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Voice:', style: TextStyle(fontWeight:FontWeight.bold , color: Colors.blueGrey),),
                SizedBox(width: 10,),
                Text('532' , style: TextStyle(color: Colors.black),)
              ],
            ),
            ButtonTheme.bar(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('BUY PLAN', style: TextStyle(color: Colors.blue),),
                    onPressed: (){
                      // Todo:Implement Top screen
                    },
                  ),
                  FlatButton(
                    child: const Text('STATEMENT', style: TextStyle(color: Colors.blue),),
                    onPressed: (){
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> Statements()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );





    return MaterialApp(
      title: 'PersonalMokashBankHomePage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(top: 0, right: 5, left: 5),
              child: ListView(
                children: <Widget>[
                  MokashBankCarousel,
                  BankingCard,
                  MyMTNCard,
                ],
              )
          ),
        ),
      ),
    );
  }
}