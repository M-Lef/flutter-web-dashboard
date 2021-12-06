import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ntfg/constants/controllers.dart';
import 'package:ntfg/helpers/responsiveness.dart';
import 'package:ntfg/pages/overview/widgets/available_driver.dart';
import 'package:ntfg/pages/overview/widgets/overview_card_large.dart';
import 'package:ntfg/pages/overview/widgets/overview_cards_medium.dart';
import 'package:ntfg/pages/overview/widgets/overview_cards_small.dart';
import 'package:ntfg/pages/overview/widgets/revenue_info.dart';
import 'package:ntfg/pages/overview/widgets/revenue_section_large.dart';
import 'package:ntfg/pages/overview/widgets/revenue_section_small.dart';
import 'package:ntfg/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveWidget.isSmallScreen(context) ? 54 : 6),
                  child: CustomText(
                    text: menuController.activeItem.value,
                    size: 24,
                    weight: FontWeight.bold,
                  ),
                )
              ],
            )),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context)) ...[
                if (ResponsiveWidget.isCustomSize(context)) ...[
                  OverviewCardsMediumScreen()
                ] else
                  OverviewCardsLargeScreen()
              ] else
                OverviewCardsSmallScreen(),
              if (!ResponsiveWidget.isSmallScreen(context)) ...[
                RevenueSectionLarge()
              ] else ...[
                RevenueSectionSmall()
              ],
              AvailableDrivers()
            ],
          ),
        )
      ],
    );
  }
}
