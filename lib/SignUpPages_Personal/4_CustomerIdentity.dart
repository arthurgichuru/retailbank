import 'package:flutter/material.dart';
import 'package:myreg/SignUpPages_Personal/3_CustomerNames.dart';

class CustomerIdentity extends StatefulWidget{

  //Set up the fist name and last name variables
  String fName;
  String lastName;

  //instantiate the constructor with the first names and last names
  CustomerIdentity({Key key, this.fName,this.lastName }) : super(key:key);

  _CustomerIdentity createState()=> _CustomerIdentity();
}

class _CustomerIdentity extends State<CustomerIdentity>{


  List _documents = [
    "Passport",
    "National ID",
    "Alien ID",
    "Driving License"
  ];

  List<DropdownMenuItem<String>>_dropDownMenuItems;

  String _currentDocument;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentDocument = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String documents in _documents) {
      items.add(
          new DropdownMenuItem(
              value: documents, child: new Text(documents)));
    }
    return items;
  }


  Widget build(BuildContext context) {

    //Description Text
    final descriptionText = new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 250.0,
            height: 50.0,
            //apply the first name from the CustomerNames widget
            child: new Text('${widget.fName} ' + 'Select your ID document.',
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

    //IDNumber
    final IDNumber = SizedBox(
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
            labelText: 'ID number',
            helperText: 'Number as per ID'
        ),
      ),
    );


    //Next Button

    final CustomerIdNextButton = new Container(
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
                    child: const Text(
                      'NEXT', style: TextStyle(color: Colors.black),),
                    elevation: 4.0,
                    color: Color(0xFFFFBE01),
                    splashColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),),
                    onPressed: () {
                      Navigator.pushNamed(context, '/5_CustomerEmail');
                    }),
              ),
            ],
          ),
        ),
      ),
    );

    //DropDown

    final DropDownDocuments = Container(
      //margin: EdgeInsets.all(10),
      width: 100.0,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.grey)
      ),
      child: Padding(padding: const EdgeInsets.all(10),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            value: _currentDocument,
            items: _dropDownMenuItems,
            onChanged: changedDropDownItem,
          ),
        ),
      ),
    );


    return MaterialApp(
      title: 'IDDocuments',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Customer ID', style: TextStyle(color: Colors.black),),
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black,),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10, width: 300,),
                  descriptionText,
                  SizedBox(height: 10, width: 300,),
                  DropDownDocuments,
                  SizedBox(height: 50, width: 300,),
                  IDNumber,
                  SizedBox(height: 40, width: 300,),
                  CustomerIdNextButton
                ],
              )
          ),
        ),
      ),
    );
  }

    void changedDropDownItem(String selectedDocument){
      setState(() {
        _currentDocument = selectedDocument;
      });
    }
  }



