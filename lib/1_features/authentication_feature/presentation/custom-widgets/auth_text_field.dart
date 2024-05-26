import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthTextFieldWidget extends StatelessWidget {
  TextEditingController textEditingController;
  final bool isDisabled;
  final String label;
  final IconData? icon;
  final String? errorMessage;

  AuthTextFieldWidget(
      {super.key,
      this.errorMessage,
      required this.label,
      this.icon,
      required this.textEditingController,
      required this.isDisabled});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        enabled: !isDisabled,
        style: GoogleFonts.raleway().copyWith(
          color: Colors.black54,
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            color: Colors.white,
            icon,
            size: 20,
          ),
          label: Text(
            label,
            style: GoogleFonts.raleway().copyWith(
              color: Colors.blueGrey,
              fontSize: 14,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueGrey,
              width: 1,
            ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.teal,
              width: 1,
            ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.redAccent,
              width: 1,
            ),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
          ),
          error: errorMessage != null
              ? Text(
                  errorMessage!,
                  style: GoogleFonts.raleway().copyWith(
                    color: Colors.redAccent,
                    fontSize: 14,
                  ),
                )
              : null,
          suffix: GestureDetector(
            onTap: () {
              print("tapped trash");
              textEditingController.clear();
            },
            child: SizedBox(
              width: 30,
              height: 30,
              child: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
