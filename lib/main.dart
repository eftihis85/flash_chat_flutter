import 'package:flutter/material.dart';
import 'package:flash_chat_flutter/screens/welcome_screen.dart';
import 'package:flash_chat_flutter/screens/login_screen.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'package:flash_chat_flutter/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: const TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen().routId,
      routes: {
        WelcomeScreen().routId: (context) => ChatScreen(),
        LoginScreen().routId: (context) => LoginScreen(),
        RegistrationScreen().routId: (context) => RegistrationScreen(),
        WelcomeScreen().routId: (context) => WelcomeScreen()
      },
    );
  }
}
