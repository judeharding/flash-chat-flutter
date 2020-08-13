import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      theme: ThemeData.dark().copyWith(
//        textTheme: TextTheme(
//          bodyText2: TextStyle(color: Colors.black54),
//        ),
//      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        // new way with id's doesn't make an entire welcome screen regenerate
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
//        // old way
//        '/': (context) => WelcomeScreen(),
//        '/login': (context) => LoginScreen(),
//        '/registration': (context) => RegistrationScreen(),
//        '/chat': (context) => ChatScreen(),
      },
//      home: WelcomeScreen(),
    );
  }
}
