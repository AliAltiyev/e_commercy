import 'package:e_commercy/src/presentation/resources/color_manager.dart';
import 'package:e_commercy/src/util/constants/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../util/constants/image_assets.dart';
import 'onboarding_page.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _pageController = PageController();
  int _pageViewValue = 0;
  late final List<SliderObject> _sliders = _getSliderObjects();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView.builder(
              itemBuilder: (context, index) {
                return OnBoardingPage(
                  sliderObject: _sliders[index],
                );
              },
              controller: _pageController,
              itemCount: _sliders.length,
              onPageChanged: (value) {
                setState(() {
                  _pageViewValue = value;
                });
              },
            ),
          ),
          Expanded(child: _getIndicator())
        ],
      ),
    );
  }

  SmoothPageIndicator _getIndicator() {
    return SmoothPageIndicator(
      controller: _pageController,
      count: _sliders.length,
      axisDirection: Axis.horizontal,
      effect: SlideEffect(
          spacing: 8.0,
          radius: 4.0,
          dotWidth: 24.0,
          dotHeight: 16.0,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: Colors.grey,
          activeDotColor: ColorManager.primary),
    );
  }

  List<SliderObject> _getSliderObjects() => [
        SliderObject(
            title: StringConstants.onBoardingOneSlogan,
            image: ImageAssets.onBoardingImageOne),
        SliderObject(
            title: StringConstants.onBoardingOneSlogan,
            image: ImageAssets.onBoardingImageTwo),
        SliderObject(
            title: StringConstants.onBoardingOneSlogan,
            image: ImageAssets.onBoardingImageThree)
      ];
}

class SliderObject {
  final String title;
  final String image;

  SliderObject({required this.title, required this.image});
}
