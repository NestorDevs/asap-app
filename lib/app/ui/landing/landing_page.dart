import 'package:asap_app/app/ui/login/login_page.dart';
import 'package:asap_app/app/ui/singup/signup_page.dart';
import 'package:flutter/material.dart';

import '../widgets/container_background.dart';
import '../widgets/image_landing.dart';
import '../widgets/logo_text.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LandingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoText(),
              ImageLanding(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil<void>(
                          LoginPage.route(), (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: Theme.of(context).primaryColor,
                    ),
                    child: const Text('Go to Login'),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil<void>(
                          SignUpPage.route(), (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: Colors.transparent,
                    ),
                    child: const Text('Go to Signup'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
