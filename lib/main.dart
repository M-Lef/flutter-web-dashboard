import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ntfg/constants/style.dart';
import 'package:ntfg/controllers/menu_controller.dart';
import 'package:ntfg/controllers/navigation_controller.dart';
import 'package:ntfg/layout.dart';
import 'package:ntfg/pages/authentification/authentification.dart';
import 'package:ntfg/routing/routes.dart';

import 'pages/404/error_page.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: authenticationPageRoute,
        unknownRoute: GetPage(name: "/not-found", page: () => PageNotFound(), transition: Transition.fadeIn),
        getPages: [
        GetPage(name: rootRoute, page: () =>  SiteLayout()),
        GetPage(name: authenticationPageRoute, page: () => AuthenticationPage()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.black
        ),
            pageTransitionsTheme: PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      }
    ),
        primarySwatch: Colors.blue,
      ),
      // home: AuthenticationPage(),
    );
  }
}