import 'package:flutter/material.dart';
import 'package:myreg/PersonalProductsPages/1_PersonalMokashBankHomePage.dart';
import 'package:myreg/PersonalProductsPages/2_PersonalMokashBankPaymentsPage.dart';
import 'package:myreg/PersonalProductsPages/3_PersonalMokashBankMyBankPage.dart';
import 'package:myreg/PersonalProductsPages/4_PersonalMokashBankMyMtnPage.dart';
import 'package:myreg/ProfilePage/1_ProfilePage.dart';
//import 'package:myreg/PersonalProductsPages/5_PersonalMokashBankPromoPage.dart';

class PersonalProductsMainPage extends StatefulWidget{

  _PersonalProductsMainPage  createState()=> _PersonalProductsMainPage ();
}

class _PersonalProductsMainPage  extends State<PersonalProductsMainPage>{

  int _currentIndex = 0;

  final List<Widget>_children = [
    PersonalMokashBankHomePage(),
    PersonalMokashBankMyBankPage(),
    PersonalMokashBankPaymentsPage(),
    PersonalMokashBankMyMtnPage(),
    //PersonalMokashBankPromoPage(),
  ];

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'PersonalProductsMainPage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mokash Bank', textAlign: TextAlign.center, style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.amber,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.help,color: Colors.black,),
                onPressed: (){
                  //todo:implement help
                }),
            IconButton(
                icon: Icon(Icons.perm_identity,color: Colors.black,),
                tooltip: 'Your Profile',
                onPressed: () {
                  Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> ProfilePage()));
                }
            ),
          ],
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTabTabbed,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.amber,),
              title: Text('Home',style: TextStyle(color: Colors.black),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance, color: Colors.amber,),
                title: Text('Mokash', style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.monetization_on, color: Colors.amber,),
                title: Text('Payments', style: TextStyle(color: Colors.black),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_android, color: Colors.amber,),
                title: Text('MTN', style: TextStyle(color: Colors.black),)
            ),

            /*BottomNavigationBarItem(
                icon: Icon(Icons.favorite, color: Colors.amber,),
                title: Text('Deals', style: TextStyle(color: Colors.black),)
            )*/
          ],
        ),
      ),
    );
  }

  void onTabTabbed(int index){
    setState(() {
      _currentIndex =index;
    });
  }
}