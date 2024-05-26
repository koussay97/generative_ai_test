import 'package:flutter/material.dart';
import 'package:generative_language_test/0_core/brand-guideline/direct_accessors.dart';

import '../custom-widgets/auth_custom_widgets.dart';

class AuthScreenChatBotApp extends StatefulWidget {
  const AuthScreenChatBotApp({super.key});

  @override
  State<AuthScreenChatBotApp> createState() => _AuthScreenChatBotAppState();
}

class _AuthScreenChatBotAppState extends State<AuthScreenChatBotApp>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> backgroundAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 50),
    )..repeat(reverse: true);
    backgroundAnimation = Tween<double>(begin: 0, end: -350).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut))
      ..addListener(bgAnimationListener);
    super.initState();
  }

  void bgAnimationListener() {}

  @override
  Widget build(BuildContext context) {
    print("running auth screen");
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            /// background parallax effect
            AnimatedBuilder(
                animation: backgroundAnimation,
                child: RotatedBox(
                  quarterTurns: 2,
                  child: AssetAccessor.backgroundImage(
                      height: deviceHeight * .9, fit: BoxFit.cover),
                ),
                builder: (BuildContext context, Widget? child) {
                  return Positioned(
                      width: deviceHeight,
                      top: 0,
                      right: backgroundAnimation.value,
                      child: child!);
                }),

            Positioned(
              top: deviceHeight * 0.5 - (deviceWidth * 0.7 * 0.2),
              width: deviceWidth,
              child: Center(
                child: AuthBottomSection(
                    height: deviceWidth * 0.8,
                    width: deviceWidth * 0.9,
                    child: AuthForm(
                      width: deviceWidth * 0.8,
                    )),
              ),
            ),
            MyHome()
          ],
        ),
      ),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = new AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return new Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateZ(animationController.value * 45.0),
          child: child,
        );
      },
      child: new Scaffold(
        appBar: AppBar(
          title: Text("The 3D Matrix"),
        ),
        body: new Center(
          child: new ElevatedButton(
            onPressed: () => animationController.forward(),
            child: new Text("Start anim"),
          ),
        ),
      ),
    );
  }
}
