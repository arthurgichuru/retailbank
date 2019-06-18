import 'package:flutter/material.dart';
import 'package:myreg/PersonalLoan/1_30dayPersonalLoanPage.dart';
import 'package:myreg/Overdrafts/1_OverdraftPage.dart';

class PersonalMokashBankMyBankPage extends StatefulWidget {
  _PersonalMokashBankMyBankPage createState() =>
      _PersonalMokashBankMyBankPage();
}

class _PersonalMokashBankMyBankPage
    extends State<PersonalMokashBankMyBankPage> {
  @override
  Widget build(BuildContext context) {
    final PersonalLoanCard = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
          onTap: () {
            _settingModalBottomSheetLoansPage(context);
          },
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Material(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.attach_money,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Personal Loans',
                    style: TextStyle(color: Colors.black87, fontSize: 12.0),
                  ),
                )
              ],
            ),
          )),
    );

    final OverdraftCard = Card(
      elevation: 10,
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(
              builder: (context) => MokashOverdraftPage()));
        },
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.graphic_eq,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Overdraft',
                  style: TextStyle(color: Colors.black87, fontSize: 12.0),
                ),
              )
            ],
          ),
        ),
      ),
    );

    final InvestmentsCard = Card(
        elevation: 10,
        margin: EdgeInsets.all(5),
        child: InkWell(
            onTap: () {
              _settingModalBottomSheetInvestments(context);
            },
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Material(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.equalizer,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Investments',
                  style: TextStyle(color: Colors.black87, fontSize: 12.0),
                ),
              )
            ],
          ),
        ),
        ),
    );



    final SavingsCard = Card(
        elevation: 10,
        margin: EdgeInsets.all(5),
        child: InkWell(
            onTap: () {
              _settingModalBottomSheetSavings(context);
            },
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Material(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.group_work,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Savings',
                  style: TextStyle(color: Colors.black87, fontSize: 12.0),
                ),
              )
            ],
          )
        ),
        ));

    final InsuranceCard = Card(
        elevation: 10,
        margin: EdgeInsets.all(5),
        child: InkWell(
            onTap: () {
              _settingModalBottomSheetInsurance(context);
            },
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.beach_access,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Insurance',
                  style: TextStyle(color: Colors.black87, fontSize: 12.0),
                ),
              )
            ],
          ),
        ),
        ));

    final FinancialInfoCard = Card(
        elevation: 10,
        margin: EdgeInsets.all(5),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Info',
                  style: TextStyle(color: Colors.black87, fontSize: 12.0),
                ),
              )
            ],
          ),
        ));

    final PaymentCards = GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        PersonalLoanCard,
        OverdraftCard,
        InvestmentsCard,
        SavingsCard,
        InsuranceCard,
        FinancialInfoCard
      ],
    );

    return MaterialApp(
        title: 'PersonalMokashMyBankPage',
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: PaymentCards));
  }

  //This code is being temporarily being hosted here. it should be abstracted to its
  //own class in the SendMoneyLandingPage

  //Loans
  void _settingModalBottomSheetLoansPage(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(
                      Icons.timer,
                      color: Colors.green,
                    ),
                    title: new Text('30 day Loan'),
                    onTap: () {
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => MokashPersonalLoansPage()));
                    }),
                new ListTile(
                  leading: new Icon(
                    Icons.access_alarm,
                    color: Colors.orangeAccent,
                  ),
                  title: new Text(
                    '3 months to 6 months Loan',
                  ),
                  onTap: () => {},
                ),
                new ListTile(
                  leading: new Icon(
                    Icons.access_time,
                    color: Colors.deepPurpleAccent,
                  ),
                  title: new Text('6 months to 3 Year Loan'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }


  //Investments
  void _settingModalBottomSheetInvestments(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.equalizer, color: Colors.green,),
                    title: new Text('Fixed Term'),
                    onTap: ()  {

                      //ToDo
                      //Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> PayTvBilling()));
                    }
                ),
                new ListTile(
                  leading: new Icon(Icons.graphic_eq, color: Colors.orangeAccent,),
                  title: new Text('Call Term',),
                  onTap: () => {},
                ),
              ],
            ),
          );
        }
    );
  }


  //Savings
  void _settingModalBottomSheetSavings(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.dashboard, color: Colors.green,),
                    title: new Text('General Savings'),
                    onTap: ()  {

                      //ToDo
                     // Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> PayTvBilling()));
                    }
                ),
                new ListTile(
                  leading: new Icon(Icons.radio_button_checked, color: Colors.orangeAccent,),
                  title: new Text('Savings Goals',),
                  onTap: () => {},
                ),
              ],
            ),
          );
        }
    );
  }




  //Insurance
  void _settingModalBottomSheetInsurance(context){
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc){
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                  leading: new Icon(Icons.directions_car, color: Colors.blue,),
                  title: new Text('Protect your car',),
                  onTap: () => {},
                ),
                new ListTile(
                  leading: new Icon(Icons.monochrome_photos, color: Colors.orangeAccent,),
                  title: new Text('Protect your belongings',),
                  onTap: () => {},
                ),
                new ListTile(
                  leading: new Icon(Icons.local_hospital, color: Colors.red,),
                  title: new Text('Protect your health',),
                  onTap: () => {},
                ),
              ],
            ),
          );
        }
    );
  }


}
