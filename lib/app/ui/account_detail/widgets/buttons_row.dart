import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/authentication/authentication_bloc.dart';

class ButtonsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Verify Email'),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            primary: Theme.of(context).primaryColor,
          ),
        ),
        OutlineButton(
          borderSide: const BorderSide(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          textColor: Colors.grey,
          onPressed: () => context
              .read<AuthenticationBloc>()
              .add(AuthenticationLogoutRequested()),
          child: const Text('Logout'),
        ),
      ],
    );
  }
}
