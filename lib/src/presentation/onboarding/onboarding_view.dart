import 'package:e_commercy/src/presentation/resources/color_manager.dart';
import 'package:e_commercy/src/presentation/resources/values_manager.dart';
import 'package:e_commercy/src/presentation/widgets/customElevtedButton.dart';
import 'package:e_commercy/src/util/constants/string.dart';
import 'package:e_commercy/src/util/extension/context_extension.dart';
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
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        elevation: ApplicationSize.s0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorManager.white,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: context.paddingLow,
        child: Column(
          children: [
            Expanded(
              flex: 7,
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
            _getSkipButton(context),
            Expanded(flex: 1, child: _getIndicator()),
          ],
        ),
      ),
    );
  }

  Row _getSkipButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: context.paddingLow,
          child: CustomElevatedButton(
            child: Text(
              'Пропустить -> ',
              style: context.textTheme.titleSmall,
            ),
            backgroundColor: ColorManager.primary,
            voidCallback: () {},
          ),
        ),
      ],
    );
  }

  _getIndicator() {
    return AnimatedSmoothIndicator(
      curve: Curves.easeInCirc,
      count: _sliders.length,
      axisDirection: Axis.horizontal,
      effect: SwapEffect(
          type: SwapType.yRotation,
          spacing: ApplicationSize.s18,
          radius: ApplicationSize.s18,
          dotWidth: ApplicationSize.s20,
          dotHeight: ApplicationSize.s16,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: ApplicationSize.s1_5,
          dotColor: ColorManager.primary,
          activeDotColor: ColorManager.primary),
      activeIndex: _pageViewValue,
    );
  }

  List<SliderObject> _getSliderObjects() => [
        SliderObject(
            title: StringConstants.onBoardingFirstSlogan,
            image: ImageAssets.onBoardingImageOne),
        SliderObject(
            title: StringConstants.onBoardingSecondSlogan,
            image: ImageAssets.onBoardingImageTwo),
        SliderObject(
            title: StringConstants.onBoardingThirdSlogan,
            image: ImageAssets.onBoardingImageThree)
      ];
}

class SliderObject {
  final String title;
  final String image;

  SliderObject({required this.title, required this.image});
}
