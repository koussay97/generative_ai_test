import 'package:flutter/material.dart';
import 'package:generative_language_test/0_core/responsive_layout/responsive_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ResponsiveBuilder(
            extraLarge: Align(
              alignment: Alignment.center,
              child: Container(
                key: const ValueKey(1),
                height: 300,
                width: 300,
                color: Colors.blue,
                child: Text('${MediaQuery.of(context).size.width}'),
              ),
            ),
            androidMobile: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                key: const ValueKey(2),
                height: 50,
                width: 50,
                color: Colors.green,
                child: Text('${MediaQuery.of(context).size.width}'),
              ),
            ),
            androidTablet: Align(
              alignment: Alignment.topCenter,
              child: Container(
                key: const ValueKey(3),
                height: 80,
                width: 80,
                color: Colors.red,
                child: Text('${MediaQuery.of(context).size.width}'),
              ),
            ),
            windowsDesktop: Container(
              key: const ValueKey(4),
              height: 200,
              width: 200,
              color: Colors.grey,
              child: Text('${MediaQuery.of(context).size.width}'),
            )),
      ),
    );
  }
}
