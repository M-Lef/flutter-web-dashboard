import 'package:flutter/material.dart';
import 'package:ntfg/helpers/responsiveness.dart';
import 'package:ntfg/widgets/large_screen.dart';
import 'package:ntfg/widgets/medium_screen.dart';
import 'package:ntfg/widgets/side_menu.dart';
import 'package:ntfg/widgets/small_screen.dart';
import 'package:ntfg/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
        appBar: topNavigatioBar(context, scaffoldkey),
        drawer: Drawer(
          child: SideMenu(),
        ),
        body: ResponsiveWidget(
            largeScreen: LargeScreen(),
            mediumScreen: MediumScreen(),
            smallScreen: SmallScreen()));
  }
}
