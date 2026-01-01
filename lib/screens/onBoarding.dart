import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_ui_design/login/loginPage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        decoration: PageDecoration(imageFlex: 3),
        image: Lottie.network(
          "https://lottie.host/4cd78823-fd24-45a5-aa78-38dd9640acea/M7lkXosV97.json",
        ),
        title: "Welcome To PicHub",
        body: "Here you can write the description of the page",
      ),
      PageViewModel(
        decoration: PageDecoration(imageFlex: 3),
        image: Lottie.network(
          "https://lottie.host/3ecb54e0-e788-4de7-920b-b75e22592005/N4QHUutsdD.json",
        ),
        title: "Buy your favourite item here.",
        body: "Here you can write the description of the page",
      ),
      PageViewModel(
        decoration: PageDecoration(imageFlex: 3),
        image: Lottie.network(
          "https://lottie.host/3aa08a1d-2bd4-44a4-8a4b-b4f577dd4ded/J4tQUN1Jos.json",
        ),
        title: "Get your item delivered at your doorstep.",
        body: "Here you can write the description of the page",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showSkipButton: true,
        skip: Text("Skip"),
        next: Icon(Icons.arrow_forward_rounded),
        done: Text("Get Started"),
        dotsDecorator: DotsDecorator(
          color: Colors.grey,
          activeColor: Colors.black,
        ),
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Loginpage()),
          );
        },
        pages: getPages(),
      ),
    );
  }
}
