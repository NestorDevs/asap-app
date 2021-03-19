import 'package:asap_app/app/ui/widgets/container_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:authentication_repository/authentication_repository.dart';

import 'cubit/login_cubit.dart';
import 'widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundContainer(
        child: BlocProvider(
          create: (context) =>
              LoginCubit(context.read<AuthenticationRepository>()),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: LoginForm(),
          ),
        ),
      ),
    );
  }
}
