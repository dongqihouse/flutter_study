// Copyright (c) 2021 qd Inc. All Rights Reserved.

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class ThirdIntroductionScreen extends StatelessWidget {
  const ThirdIntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PageViewModel> listPagesViewModel = [
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.network("https://domaine.com/image.png", height: 175.0),
        ),
      ),
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.network("https://domaine.com/image.png", height: 175.0),
        ),
      ),
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.network("https://domaine.com/image.png", height: 175.0),
        ),
      )
    ];
    return IntroductionScreen(
      pages: listPagesViewModel,
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      showSkipButton: false,
      showNextButton: false,
      onDone: () {
        // When done button is press
      },
    );
  }
}
