import 'package:flutter/cupertino.dart';
import 'package:ntfg/constants/controllers.dart';
import 'package:ntfg/routing/router.dart';
import 'package:ntfg/routing/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      initialRoute: overviewPageRoute,
      onGenerateRoute: generateRoute,
    );
