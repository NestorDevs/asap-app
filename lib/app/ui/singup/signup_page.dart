import 'package:asap_app/app/ui/widgets/container_background.dart';
import 'package:asap_app/app/ui/widgets/logo_text.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/signup_cubit.dart';
import 'widgets/signup_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoText(),
            const SizedBox(height: 25),
            BlocProvider<SignUpCubit>(
              create: (_) =>
                  SignUpCubit(context.read<AuthenticationRepository>()),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: SignUpForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
