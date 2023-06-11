import 'dart:async';

import 'package:e_commercy/src/domain/entity/slider.dart';
import 'package:e_commercy/src/presentation/base/base_view_model.dart';
import 'package:e_commercy/src/util/constants/image_assets.dart';
import 'package:flutter/material.dart';

final class OnBoardingViewModel extends BaseViewModel
    implements OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
  StreamController<Iterable<SliderObject>> streamController =
      StreamController();
  int currentIndex = 0;
  late Iterable<SliderObject> getSliders;
  final PageController pageController = PageController();

  @override
  void init() {
    getSliders = _sliders();
    addSliders.add(getSliders);
  }

  @override
  void onPageChanged(int index) {
    currentIndex = index;
    addSliders.add(getSliders);
  }

  @override
  Sink get addSliders => streamController.sink;

  @override
  Stream get sliders => streamController.stream.map((event) => event);

  @override
  void dispose() {
    streamController.close();
  }

  Iterable<SliderObject> _sliders() {
    return [
      SliderObject(title: 'First', image: ImageAssets.onBoardingImageOne),
      SliderObject(title: 'Second', image: ImageAssets.onBoardingImageThree),
      SliderObject(title: 'First', image: ImageAssets.onBoardingImageTwo),
    ];
  }
}

//?Getting data from View
abstract class OnBoardingViewModelInputs {
  void onPageChanged(int index);
  Sink get addSliders;
}

//?Sendind data to View
abstract class OnBoardingViewModelOutputs {
  Stream get sliders;
}
