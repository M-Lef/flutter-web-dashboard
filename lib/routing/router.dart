import 'package:flutter/material.dart';
import 'package:ntfg/pages/clients/clients.dart';
import 'package:ntfg/pages/drivers/drivers.dart';
import 'package:ntfg/pages/overview/overview.dart';
import 'package:ntfg/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverViewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverViewPage());

  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}