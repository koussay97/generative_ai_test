/*
import 'package:flutter/material.dart';
import 'package:flutter_desktop_test_app/core/responsive_layout/responsive_widget.dart';
import 'package:flutter_desktop_test_app/core/router/menue-wrapper/app-bar-widgets/app_bar_export.dart';
import 'package:go_router/go_router.dart';

import '0-app_layout/layout_exports.dart';

class ResponsiveMenuWrapper extends StatelessWidget {
  final StatefulNavigationShell shell;

  const ResponsiveMenuWrapper({Key? key, required this.shell})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: ResponsiveBuilder(
                  androidMobile: MobileLayout(shell: shell),
                  windowsDesktop: DesktopLayout(shell: shell),
                  androidTablet: TabletLayout(shell: shell),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child:ResponsiveBuilder(
                  androidMobile: MobileAppBar(title: shell.currentIndex.toString()),
                  windowsDesktop: DesktopAppBar(title:shell.currentIndex.toString()),
                  androidTablet: TabletAppBar(title: shell.currentIndex.toString(),),
                ) ,
              ),
            ],
          )

          ), */
/* StandardLayout(
        shell: shell,
      ),*/ /*

    );
  }
}
*/
