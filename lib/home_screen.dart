import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'style/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.blackBackground,
      body: Column(
        children: const [
          TopWidget(),
          Expanded(
            child: ListWidget(),
          ),
          BottomWidget(),
        ],
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: UiSpacing.medium),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Gap(UiSpacing.medium),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiText.textBodyMedium("Transactions", UiColors.typoLightGrey),
                UiText.textBodyMedium("See all", UiColors.purple),
              ],
            ),
            const Gap(UiSpacing.medium),
            const CardTransaction(),
            const Gap(UiSpacing.medium),
            UiText.textBodyMedium("Watchlist", UiColors.typoLightGrey),
            const Gap(UiSpacing.medium),
            CryptoCard(
              icon: UiIcons.bitcoin,
              amount: "\$21,262.60",
              trend: "+0.54%",
              name: "BTC",
              title: "Bitcoin",
            ),
            const Gap(UiSpacing.medium),
            CryptoCard(
              icon: UiIcons.ethereum,
              amount: "\$1,225.85",
              trend: "+1.67%",
              name: "ETH",
              title: "Ethereum",
            ),
            const Gap(UiSpacing.medium)
          ],
        ),
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    super.key,
    required this.amount,
    required this.icon,
    required this.name,
    required this.title,
    required this.trend,
  });

  final Image icon;
  final String title;
  final String amount;
  final String trend;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: UiColors.darkGreyBackground,
        borderRadius: UiSpacing.borderRadiusRegular,
      ),
      padding: const EdgeInsets.all(UiSpacing.small),
      child: Row(
        children: [
          icon,
          const Gap(UiSpacing.medium),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiText.textBodyMedium(
                      title,
                      UiColors.typoSnowWhite,
                      weight: FontWeight.bold,
                    ),
                    UiText.textBodyMedium(
                      amount,
                      UiColors.typoSnowWhite,
                      weight: FontWeight.bold,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiText.textBodySmall(
                      name,
                      UiColors.typoStormGrey,
                    ),
                    UiText.textBodySmall(
                      trend,
                      UiColors.purple,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardTransaction extends StatelessWidget {
  const CardTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: UiColors.darkGreyBackground,
        borderRadius: UiSpacing.borderRadiusRegular,
      ),
      padding: const EdgeInsets.all(UiSpacing.small),
      child: Row(
        children: [
          UiIcons.ethereum,
          const Gap(UiSpacing.medium),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UiText.textBodyMedium(
                      "Bought ETH",
                      UiColors.typoSnowWhite,
                      weight: FontWeight.bold,
                    ),
                    UiText.textBodyMedium(
                      "+0.65 ETH",
                      UiColors.typoLightGrey,
                      weight: FontWeight.bold,
                    )
                  ],
                ),
                UiText.textBodySmall(
                  "-\$812.10",
                  UiColors.typoStormGrey,
                ),
                UiText.textBodySmall(
                  "30 Jul 2022, 3.30 PM",
                  UiColors.typoStormGrey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: UiColors.purplePinkGrad,
        borderRadius: UiSpacing.borderRadiusLarge,
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(UiSpacing.large),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UiIcons.hamburger,
                  UiText.textBodyLarge(
                    "Home",
                    UiColors.typoDustyGrey,
                  ),
                  const SizedBox(
                    width: UiSpacing.medium,
                  )
                ],
              ),
              const Gap(UiSpacing.veryLarge),
              UiText.textBodyLarge("Your balance", UiColors.typoDustyGrey),
              const Gap(UiSpacing.verySmall),
              UiText.textHeading("\$2,610.50", UiColors.typoSnowWhite),
              const Gap(UiSpacing.veryLarge),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(UiSpacing.medium),
                      decoration: BoxDecoration(
                        borderRadius: UiSpacing.borderRadiusRegular,
                        color: UiColors.typoDustyGrey.withOpacity(0.3),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          UiIcons.up,
                          const Gap(UiSpacing.small),
                          UiText.textBodyMedium(
                              "Top up", UiColors.typoSnowWhite)
                        ],
                      ),
                    ),
                  ),
                  const Gap(UiSpacing.small),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(UiSpacing.medium),
                      decoration: BoxDecoration(
                        borderRadius: UiSpacing.borderRadiusRegular,
                        color: UiColors.typoDustyGrey.withOpacity(0.3),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          UiIcons.plus,
                          const Gap(UiSpacing.small),
                          UiText.textBodyMedium("Buy", UiColors.typoSnowWhite)
                        ],
                      ),
                    ),
                  ),
                  const Gap(UiSpacing.small),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(UiSpacing.medium),
                      decoration: BoxDecoration(
                        borderRadius: UiSpacing.borderRadiusRegular,
                        color: UiColors.typoDustyGrey.withOpacity(0.3),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          UiIcons.minus,
                          const Gap(UiSpacing.small),
                          UiText.textBodyMedium("Sell", UiColors.typoSnowWhite)
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UiColors.blackBackground,
      child: Row(
        children: [
          Expanded(
            child: Image(
              image: UiIcons.home.image,
              color: UiColors.purple,
            ),
          ),
          Expanded(child: UiIcons.portfolio),
          Expanded(child: UiIcons.trade),
          Expanded(child: UiIcons.account),
        ],
      ),
    );
  }
}
