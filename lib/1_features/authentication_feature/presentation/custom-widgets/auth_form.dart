import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generative_language_test/1_features/authentication_feature/presentation/custom-widgets/auth_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatefulWidget {
  final double width;

  const AuthForm({super.key, required this.width});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController()..clear();
    passwordController = TextEditingController()..clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      //height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [
          const Color.fromRGBO(150, 200, 210, 1.0).withOpacity(0.6),
          const Color.fromRGBO(200, 200, 200, 1).withOpacity(0.6),
        ]),
        backgroundBlendMode: BlendMode.multiply,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AuthTextFieldWidget(
            label: "Email",
            textEditingController: emailController,
            isDisabled: false,
            icon: FontAwesomeIcons.addressCard,
          ),
          const SizedBox(
            height: 20,
          ),
          AuthTextFieldWidget(
            label: "Password",
            textEditingController: passwordController,
            isDisabled: false,
            icon: FontAwesomeIcons.lock,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueGrey),
            ),
            onPressed: () {},
            child: Text(
              "login",
              style: GoogleFonts.raleway().copyWith(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(
                  text: "Forget Password?",
                  style: GoogleFonts.raleway().copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                TextSpan(
                    text: " RESET PASSWORD",
                    style: GoogleFonts.raleway().copyWith(
                      color: Colors.blueGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    )),
              ])),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
                text: "don't have an account?",
                style: GoogleFonts.raleway().copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                children: [
                  TextSpan(
                      text: " REGISTER",
                      style: GoogleFonts.raleway().copyWith(
                        color: Colors.blueGrey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                ]),
          ),
        ],
      ),
    );
  }
}
