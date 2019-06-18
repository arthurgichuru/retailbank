import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget{

  _ProfilePage createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {


    var userProfile = ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Elsa Muzzolini'),accountEmail: Text('Elsa.Muzzolini@MTNGroup'),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('E', style: TextStyle(fontSize: 40.0),),
          ),
        ),
        ListTile(
          title: Text('Profile'),
          trailing: Icon(Icons.perm_identity),
        ),
        ListTile(
          title: Text('Notifications'),
          trailing: Icon(Icons.notifications_active),
        ),
        ListTile(
          title: Text('Change Password'),
          trailing: Icon(Icons.lock),

        ),
        ListTile(
          title: Text('Invite a Friend'),
          trailing: Icon(Icons.people_outline),

        ),
        ListTile(
          title: Text('Sign Out'),
          trailing: Icon(Icons.exit_to_app),

        ),
      ],
    );


    // TODO: implement build
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: userProfile,
      ),
    );
  }
}