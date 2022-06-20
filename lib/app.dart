import 'package:flutter/material.dart';
import 'package:nmf_social/pages/login/login.dart';
import 'package:nmf_social/pages/sign_in/sign_in.dart';
import 'package:nmf_social/pages/splash/splash.dart';
import 'package:nmf_social/pages/welcome/welcome.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'N.M.F Social',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/splash",
      routes: {
        '/splash': (context) => const Splash(),
        '/login': (context) => const Login(),
        '/signIn': (context) => const SignIn(),
        '/home': (context) => Container(),
        '/welcome': (context) => const Welcome(),
      },
    );
  }
}
