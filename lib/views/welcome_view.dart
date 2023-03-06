import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/app_colours.dart';
import '../constants/route_names.dart';
import '../constants/ui_constants.dart';
import '../services/navigation_service.dart';

class Welcome extends StatelessWidget {
  Welcome({Key? key}) : super(key: key);

  final NavigationService navigationService = NavigationService();
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/camper_van.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.black12,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: false,
            title: SizedBox(
              height: kToolbarHeight,
              width: 120,
              child: Image.asset('assets/Expedia-Logo-2012.png'),
            ),
          ),
          body: Container(
            padding: kTabLabelPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing.verticalSpace48,
                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 6,
                    dotWidth: 6,
                    activeDotColor: kExpediaLightAccent,
                    dotColor: kExpediaOnDarkSurface,
                  ),
                ),
                Spacing.verticalSpace24,
                Text(
                  'The World',
                  style: theme.textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w800,
                      color: kExpediaOnDarkSurface),
                ),
                Text(
                  'Is For You To Explore',
                  style: theme.textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w300,
                      color: kExpediaOnDarkSurface),
                ),
                Spacing.verticalSpace24,
                Text(
                  'Travel dates back to antiquity where\nwealthy greeks and Romans will travel for\nleisure to theor summer homes.',
                  style: theme.textTheme.bodyText2!
                      .copyWith(color: kExpediaOnDarkSurface, height: 1.2),
                ),
                Spacing.verticalSpace48,
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    )),
                    onPressed: () {
                      Navigator.of(context).pushNamed(expediaMainScreenRoute);
                      // navigationService.navigateTo(expediaMainScreenRoute);
                    },
                    child: const Text('  Get Started  '),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
