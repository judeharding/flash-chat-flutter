import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(
                'Something went wrong while attempting to initialize FlutterFire for your app.');
            return null;
          } else if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              initialRoute: WelcomeScreen.id,
              routes: {
                // new way with id's doesn't make an entire welcome screen regenerate
                WelcomeScreen.id: (context) => WelcomeScreen(),
                LoginScreen.id: (context) => LoginScreen(),
                RegistrationScreen.id: (context) => RegistrationScreen(),
                ChatScreen.id: (context) => ChatScreen(),
              },
            );
          }
          return Loading(
              indicator: BallPulseIndicator(), size: 100.0, color: Colors.pink);
        });
  }
}
