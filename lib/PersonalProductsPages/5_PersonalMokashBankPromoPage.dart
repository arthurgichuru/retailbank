import 'package:flutter/material.dart';

class PersonalMokashBankPromoPage extends StatefulWidget{

  _PersonalMokashBankPromoPage createState()=> _PersonalMokashBankPromoPage();
}

class _PersonalMokashBankPromoPage extends State<PersonalMokashBankPromoPage>{
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'PersonalMokashMyMtnPage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Deals', style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: (){
              Navigator.pop(context,false);
            },
          ),
          backgroundColor: Colors.amber,
        ),
        body: Container(child: Center(
          child: FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {
              _settingModalBottomSheet(context);
            },
            child: Icon(Icons.plus_one,color: Colors.black,),

          ),

        ),
        ),
      ),
    );

  }

  void _settingModalBottomSheet(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.dashboard, color: Colors.green,),
                    title: new Text('Buy Bundle'),
                    onTap: () => {}
                ),
                new ListTile(
                  leading: new Icon(Icons.backup, color: Colors.orangeAccent,),
                  title: new Text('Buy Data',),
                  onTap: () => {},
                ),
                new ListTile(
                  leading: new Icon(Icons.add_to_home_screen,color: Colors.deepPurpleAccent,),
                  title: new Text('Buy Airtime'),
                  onTap: () => {},
                ),
                new ListTile(
                  leading: new Icon(Icons.call,color: Colors.deepPurpleAccent,),
                  title: new Text('Call Contact Center'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        }
    );
  }
}