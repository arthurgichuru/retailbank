import 'package:flutter/material.dart';
import 'SignUpPages_Personal/LandingPage.dart';
import 'package:myreg/CustomerType/0_CustomerType.dart';
import 'SignUpPages_Personal/1_PhonePage.dart';
import 'SignUpPages_Personal/2_OneTimePin.dart';
import 'SignUpPages_Personal/3_CustomerNames.dart';
import 'SignUpPages_Personal/4_CustomerIdentity.dart';
import 'SignUpPages_Personal/5_CustomerEmail.dart';
import 'SignUpPages_Personal/6_IndividualCustomerPassword.dart';
import 'SignUpPages_Personal/7_CompleteAccountSetUp.dart';
import 'package:myreg/SignUpPages_Personal/8_LoginPersonal.dart';
import 'package:myreg/PersonalProductsPages/0_PersonalProductsMainPage.dart';
import 'package:myreg/ProfilePage/1_ProfilePage.dart';
import 'SendMoney/1_SendMoneyLandingPage.dart';
import 'SendMoney/2_SendMoneyToMobile.dart';
import 'SendMoney/3_SendMoneyOneTimePin.dart';
import 'SendMoney/4_SendMoneyPaymentCompletePage.dart';
import 'PayBill/1_PayTvPage.dart';
import 'PersonalLoan/1_30dayPersonalLoanPage.dart';
import 'PersonalProductsPages/5_PersonalMokashBankPromoPage.dart';
import 'package:myreg/PayLater/1_PayLaterPage.dart';
import 'package:myreg/PayMerchant/1_PayMerchant.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
     initialRoute: "/",
      routes: {
        "/":(context)=> LandingPage(),
        '/0_CustomerType':(context)=>CustomerType(),
        '/1_PhonePage' :(context)=>PhonePage(),
        '/2_OneTimePin' :(context) =>OneTimePin(),
        '/3_CustomerNames':(context)=> CustomerNames(),
        '/4_CustomerIdentity':(context)=> CustomerIdentity(),
        '/5_CustomerEmail':(context)=> CustomerEmail(),
        '/6_CustomerPassword':(context)=> CustomerPassword(),
        '/7_CompleteAccountSetUp':(context)=> CompleteAccountSetUp(),
        '/8_LogInPersonal':(context)=> LogInPersonal(),
        '/0_PersonalProductsPage':(context)=> PersonalProductsMainPage(),
        '/1_ProfilePage':(context)=> ProfilePage(),
        '/1_SendMoneyLandingPage':(context)=> SendMoneyLandingPage(),
        '/2_SendMoneyToMobilePage' :(context)=> SendMoneyToMobile(),
        '/3_SendMoneyOneTimePinPage' :(context)=> SendMoneyOneTimePin(),
        '/4_SendMoneyPaymentsCompletePage' :(context)=> SendMoneyPaymentComplete(),
        '/1_PayTvPage' :(context)=> PayTvBilling(),
        '/1_PersonalLoan':(context)=> MokashPersonalLoansPage(),
        '/5_PersonalMokashPromo':(context)=> PersonalMokashBankPromoPage(),
        '/1_PayLater':(context)=> PayLater(),
        '/1_PayMerchantPage':(context)=> PayMerchantTill(),


      },

    );
  }
}

