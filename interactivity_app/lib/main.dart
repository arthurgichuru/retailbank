import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FavoriteWidget(),
    );
  }
}

class FavoriteWidget extends StatefulWidget{
  _FavoriteWidget createState()=> _FavoriteWidget();

}



class _FavoriteWidget extends State<FavoriteWidget> {

  var _textController = new TextEditingController();
  var _textController2 = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: ListView(
        children: <Widget>[
          TextField(
            controller: _textController,
          ),
          TextField(
            controller: _textController2,
          ),
          ListTile(
            title: RaisedButton(
                child: Text('Next'),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (BuildContext contex)=> NextPage(value: _textController.text , value2:_textController2.text)
                      ),
                  );
                },
                ),
          )
        ],
      ),
    );
  }
}

class NextPage extends StatefulWidget {

  String value;
  String value2;

  NextPage({Key key, this.value, this.value2}) : super (key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: ListView(
         children: <Widget>[
           Text('${widget.value}'),
           Text('${widget.value2}')
         ],
      ),
    );
  }
}

  
