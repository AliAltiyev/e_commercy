import 'package:e_commercy/src/presentation/onboarding/viewmodel/onboarding_view_model.dart';
import 'package:e_commercy/src/presentation/resources/color_manager.dart';
import 'package:e_commercy/src/presentation/resources/routes_manager.dart';
import 'package:e_commercy/src/presentation/resources/values_manager.dart';
import 'package:e_commercy/src/presentation/widgets/customElevtedButton.dart';
import 'package:e_commercy/src/util/constants/string.dart';
import 'package:e_commercy/src/util/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'onboarding_page.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final OnBoardingViewModel viewModel = OnBoardingViewModel();

  @override
  void initState() {
    super.initState();
    viewModel.init();
  }

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
      body: StreamBuilder(
          stream: viewModel.sliders,
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Container();
            }
            return Padding(
              padding: context.paddingLow,
              child: Column(
                children: [
                  Expanded(
                    flex: 7,
                    child: _getPageViewBuilder(),
                  ),
                  _getSkipButton(context),
                  _getIndicator()
                  // Expanded(flex: 1, child: _getIndicator()),
                ],
              ),
            );
          }),
    );
  }

  @override
  void dispose() {
    viewModel.dispose();
    super.dispose();
  }

  PageView _getPageViewBuilder() {
    return PageView.builder(
      itemBuilder: (context, index) {
        return OnBoardingPage(
          sliderObject: viewModel.getSliders.toList()[index],
        );
      },
      onPageChanged: (index) {
        viewModel.onPageChanged(index);
      },
      controller: viewModel.pageController,
      itemCount: viewModel.getSliders.length,
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
              StringConstants.skip,
              style: context.textTheme.titleSmall,
            ),
            backgroundColor: ColorManager.primary,
            voidCallback: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RoutesManager.registerPage, (route) => false);
            },
          ),
        ),
      ],
    );
  }

  AnimatedSmoothIndicator _getIndicator() {
    return AnimatedSmoothIndicator(
      curve: Curves.easeInCirc,
      count: viewModel.getSliders.length,
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
      activeIndex: viewModel.currentIndex,
    );
  }
}
