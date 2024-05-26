import 'package:flutter/material.dart';
import 'package:generative_language_test/0_core/routing/router/flutter_router1_utils/screen_names.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatEcommerceSplashScreen extends StatelessWidget {
  const ChatEcommerceSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: MaterialStateProperty.all(
                Colors.teal), // Set the background color
            foregroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                horizontal: 20, vertical: 15)), // Adjust padding
          ),
          onPressed: () {
            Navigator.of(context)
                .pushReplacementNamed(ScreenNames.loginScreenName);
          },
          child: Text(
            "GET STARTED",
            style: GoogleFonts.roboto().copyWith(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
