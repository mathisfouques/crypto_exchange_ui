import 'package:crypto_exchange/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'style/style.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.blackBackground,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: UiSize.toalWidth(context),
            height: UiSize.totalHeight(context),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 10,
                  top: 100,
                  child: Transform(
                    transform: Matrix4.rotationZ(
                      UiRotation.smallRotation,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(UiSpacing.large),
                      decoration: const BoxDecoration(
                          gradient: UiColors.purplePinkGrad,
                          borderRadius: UiSpacing.borderRadiusLarge),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UiText.textBodyLarge(
                            "Debit Card",
                            UiColors.typoStormGrey,
                            weight: FontWeight.w500,
                          ),
                          const Gap(10),
                          UiText.textHeading(
                            "\$3,826.90",
                            UiColors.typoSnowWhite,
                          ),
                          const Gap(30),
                          UiIcons.chip,
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              UiText.textBodyMedium(
                                  "**** 7341", UiColors.typoStormGrey),
                              UiIcons.visaIcon
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 30,
                  child: Transform(
                    transform: Matrix4.rotationZ(
                      -UiRotation.smallRotation,
                    ),
                    child: backgoundBlur(
                      Container(
                        padding: const EdgeInsets.all(UiSpacing.large),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: UiColors.darkGreyBackground.withOpacity(0.6),
                            width: 2,
                          ),
                          color: UiColors.darkGreyBackground.withOpacity(0.3),
                          borderRadius: UiSpacing.borderRadiusLarge,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiText.textBodyLarge(
                              "Debit Card",
                              UiColors.typoStormGrey,
                              weight: FontWeight.w500,
                            ),
                            const Gap(UiSpacing.small),
                            UiText.textHeading(
                              "\$3,826.90",
                              UiColors.typoSnowWhite,
                            ),
                            const Gap(UiSpacing.large),
                            UiIcons.chip,
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                UiText.textBodyMedium(
                                    "**** 7341", UiColors.typoStormGrey),
                                UiIcons.visaIcon
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(UiSpacing.medium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UiText.textHeading(
                            "Seamless trading", UiColors.typoSnowWhite),
                        const Gap(UiSpacing.small),
                        UiText.textBodyLarge(
                          "Buy, sell and exchange cryptocurrencies.",
                          UiColors.typoStormGrey,
                        ),
                        const Gap(UiSpacing.veryLarge),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(UiSpacing.small),
                            decoration: const BoxDecoration(
                                gradient: UiColors.purplePinkGradInversed,
                                borderRadius: UiSpacing.borderRadiusRegular),
                            child: Center(
                              child: UiText.textBodyMedium(
                                "Get Started",
                                UiColors.typoSnowWhite,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
