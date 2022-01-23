import 'package:flutter/material.dart';
import 'package:flutter_sample_app/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: const HomePage(),
      title: const Text(
        'Sample App',
        textScaleFactor: 2,
      ),
      image: Image.asset('assets/images/iron_man.png'),
      loadingText: const Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.red,
    );
  }
}
