import 'package:flutter/material.dart';

import '../constants/ui_constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: theme.colorScheme.secondary,
        leading: null,
        automaticallyImplyLeading: false,
        leadingWidth: 0.0,
        titleSpacing: 0.0,
        centerTitle: false,
        title: SizedBox(
          width: 72,
          child: Image.asset('assets/simple_logo.png'),
        ),
        actions: [
          TextButton.icon(
            icon: Icon(
              Icons.location_on_outlined,
              color: theme.colorScheme.primary,
            ),
            label: Text(
              'Tamale, Ghana',
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        color: theme.colorScheme.secondary,
        // height: ScreenSize.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: Insets.standardPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The World",
                          style: theme.textTheme.headlineMedium!.copyWith(
                              fontWeight: FontWeight.w800,
                              fontSize: 28,
                              color: theme.colorScheme.primary),
                        ),
                        Text(
                          "Is for you to explore",
                          style: theme.textTheme.headlineSmall!
                              .copyWith(color: theme.colorScheme.primary),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.all(Corners.medRadius)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_outlined,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 64.0,
                        width: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: const Radius.circular(100),
                              right: Corners.baseRadius),
                          color: theme.colorScheme.background.withOpacity(0.6),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(100),
                                ),
                              ),
                              padding: const EdgeInsets.all(12.0),
                              child: const Icon(
                                Icons.holiday_village_outlined,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                            Spacing.horizontalSpace8,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Stays",
                                  style: theme.textTheme.headline6!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                                Text(
                                  "6.4K Rooms & Hotels",
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    color: theme.colorScheme.primary,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Container(
                          height: 64.0,
                          width: 210,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                left: const Radius.circular(100),
                                right: Corners.baseRadius),
                            border: Border.all(),
                            // color: theme.colorScheme.background.withOpacity(0.6),
                          ),
                          margin: const EdgeInsets.only(right: 16.0),
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                padding: const EdgeInsets.all(12.0),
                                child: Transform.rotate(
                                  angle: 45.0,
                                  child: const Icon(
                                    Icons.flight_outlined,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                                ),
                              ),
                              Spacing.horizontalSpace8,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Flights",
                                    style: theme.textTheme.headline6!.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                  Text(
                                    "6.4K Flights",
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                      color: theme.colorScheme.primary,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: Insets.standardPadding,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Corners.medRadius),
                        color: theme.colorScheme.primary,
                      ),
                      width: ScreenSize.width,
                      height: 124,
                      padding: const EdgeInsets.symmetric(
                          vertical: 24, horizontal: 16.0),
                      margin: Insets.verticalPadding12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Unsure on where to travel?',
                            style: theme.textTheme.titleMedium!
                                .copyWith(color: Colors.white),
                          ),
                          Spacing.verticalSpace4,
                          Text(
                            'Leave it to us!!!',
                            style: theme.textTheme.headlineSmall!.copyWith(
                                color: theme.colorScheme.secondary,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/hero-img.png",
                      scale: 4.5,
                    ),
                  ],
                ),
              ),
              Container(
                  height: ScreenSize.height - (200),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Corners.baseRadius),
                  ),
                  padding: Insets.standardPadding,
                  child: Column(
                    children: [
                      Spacing.verticalSpace8,
                      Container(
                        alignment: Alignment.topCenter,
                        height: 6,
                        width: ScreenSize.width / 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(48),
                          color: Colors.grey[350],
                        ),
                      ),
                      Spacing.verticalSpace24,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Ideas for your next trip',
                          style: theme.textTheme.headline5!.copyWith(
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Spacing.verticalSpace24,
                      Container(
                        height: 240,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          image: const DecorationImage(
                            image: AssetImage(
                              'assets/starlit_valley.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}