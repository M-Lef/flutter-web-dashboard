import 'package:flutter/material.dart';
import 'package:ntfg/constants/controllers.dart';
import 'package:ntfg/constants/style.dart';
import 'package:ntfg/helpers/responsiveness.dart';
import 'package:ntfg/routing/routes.dart';
import 'package:ntfg/widgets/custom_text.dart';
import 'package:ntfg/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Dash",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          Divider(
            color: lightgrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((itemName) => SideMenuItem(
                    itemName: itemName == AuthentificationPageRoute
                        ? "Log Out"
                        : itemName,
                    onTap: () {
                      if (itemName == AuthentificationPageRoute) {
                        //TODO bkabka
                      }
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) Get.back();
                        //TODO go item route
                      }
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}
