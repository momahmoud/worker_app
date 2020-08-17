
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worker/providers/auth.dart';

import 'screens/home_screen.dart';
import 'screens/login.dart';
import 'screens/splash.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: AuthProvider.initialize())
  ],
  child: MyApp(),));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Worker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home()
    );
  }
}


class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
      if(auth.status == Status.Uninitialized){
        return Splash();
      }else{
        if(auth.loggedIn){
          return Home();
        }else {
          return Login();
        }
      }
    }
  }