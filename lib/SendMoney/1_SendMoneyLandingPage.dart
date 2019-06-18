

/*
I will need to transfer the code supporting different send money types to here

 */
import 'package:flutter/material.dart';

class SendMoneyLandingPage extends StatefulWidget{

  _SendMoneyLandingPage createState()=> _SendMoneyLandingPage();
}

class _SendMoneyLandingPage extends State<SendMoneyLandingPage>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'PersonalMokashMyMtnPage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
