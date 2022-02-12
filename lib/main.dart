import 'package:flutter/material.dart';
import 'package:wallet_dchain/screens/home/add_contact.dart';
import 'package:wallet_dchain/screens/wallet/add_password.dart';
import 'package:wallet_dchain/screens/wallet/choose_language.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_dchain/screens/wallet/choose_password.dart';
import 'package:wallet_dchain/screens/home/contact_page.dart';
import 'package:wallet_dchain/screens/wallet/double_check.dart';
import 'package:wallet_dchain/screens/home/bottom_navigation.dart';
import 'package:wallet_dchain/screens/wallet/import.dart';
import 'package:wallet_dchain/screens/wallet/import_private_key.dart';
import 'package:wallet_dchain/screens/home/individual_contact.dart';
import 'package:wallet_dchain/screens/home/personal_wallet.dart';
import 'package:wallet_dchain/screens/wallet/recovery_phase.dart';
import 'package:wallet_dchain/screens/home/settings.dart';
import 'package:wallet_dchain/screens/wallet/validate_phrase.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_dchain/screens/wallet/wallet_import.dart';
import 'package:wallet_dchain/screens/home/wallet_option.dart';
import 'package:wallet_dchain/screens/wallet/wallet_ready.dart';
import 'screens/wallet/wallet.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueAccent[400],
          primaryColorDark: Colors.grey[600],
          errorColor: Colors.red,
          dividerColor: Colors.grey[200],
          textTheme: const TextTheme(
              bodyText2: TextStyle(color: Colors.white,fontSize: 20, letterSpacing: 0.3, fontWeight: FontWeight.w300, fontFamily: 'Roboto'),
              headline1: TextStyle(color: Colors.white,fontSize: 35, letterSpacing: 0.5, fontWeight: FontWeight.w400, fontFamily: 'Roboto Bold'),
            ),
          ),
      home:AnimatedSplashScreen(
      splash: SvgPicture.asset('assets/logo.svg'), 
      duration: 2000,
      nextScreen: ChooseLanguage(), 
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor:Color(0XFF303030),
      ),
      routes: {
        '/language': (context) => ChooseLanguage(),
        '/loading': (context) =>  Wallet(),
        '/recovery': (context) => RecoveryPhase(),
        '/double': (context) => DoubleCheck(),
        '/validate': (context) => Validate(),
        '/password': (context) => AddPassword(),
        '/savepassowrd': (context) => ChoosePassword(),
        '/walletready': (context) => WalletReady(),
        '/walletimport': (context) => WalletImport(),
        '/import': (context) => Import(),
        '/importprivatekey': (context) => ImportPrivateKey(),
        '/navigation': (context) => BottomNavigation(),
        '/personalwallet':  (context) => PersonalWallet(),
        '/settings':(context) => Settings(),
        '/walletoption': (context) => OptionWallet(),
        '/contact': (context) => ContactPage(),
        '/addcontact': (context) => AddContact(),
        '/indcontact': (context) => IndividualContact(),
      },
    );
  }
}
