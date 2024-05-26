import 'package:flutter/material.dart';
import 'package:generative_language_test/0_core/brand-guideline/brand_guidelines.dart';

class DesktopLayout extends StatelessWidget {
  final Widget shell;

  const DesktopLayout({Key? key, required this.shell}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Row(
      //  mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(
              color: BrandGuideLine.mainBackground,
            ),
          ),
        ),
        Expanded(
            flex: 12,
            child: Container(
              decoration: BoxDecoration(
                color: BrandGuideLine.secondaryBackgroundColor,
              ),
              child: SingleChildScrollView(
                  child: SizedBox(
                height: deviceHeight,
                width: deviceWidth,
                child: shell,
              )),
            )),
        Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(color: BrandGuideLine.mainBackground),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical, child: Container()),
            )),
      ],
    );
  }
}
