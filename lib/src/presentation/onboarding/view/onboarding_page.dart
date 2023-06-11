import 'package:e_commercy/src/presentation/widgets/custom_card.dart';
import 'package:e_commercy/src/util/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../domain/model/slider.dart';
import '../../resources/color_manager.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key, required SliderObject sliderObject})
      : _sliderObject = sliderObject;
  final SliderObject _sliderObject;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomCard(
          child: Lottie.asset(_sliderObject.image,
              fit: BoxFit.contain,
              repeat: true,
              height: context.mediaQuery.size.height / 2,
              width: context.mediaQuery.size.width),
        ),
        Text(_sliderObject.title,
            textAlign: TextAlign.center,
            style: context.textTheme.titleLarge
                ?.apply(color: ColorManager.primary)),
      ],
    );
  }
}
