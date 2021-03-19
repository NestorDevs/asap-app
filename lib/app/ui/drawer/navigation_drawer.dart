import 'package:asap_app/app/ui/widgets/logo_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'navigation_list_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.7),
            blurRadius: 4,
          ),
        ],
      ),
      height: 500,
      width: 300,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: LogoText()),
            NavigationListItem(
              title: 'hola',
              onPressed: () {},
            ),

            NavigationListItem(
              title: 'sdfsfdsf',
              onPressed: () {},
            ),
            NavigationListItem(
              title: 'sdfsdfdsfdsfdsf',
              onPressed: () {},
            ),
            // BlocListener<LoginBloc, LoginState>(
            //   listenWhen: (previous, current) => current is LogoutSuccess,
            //   listener: (context, state) {
            //     Navigator.of(context).pushNamedAndRemoveUntil(
            //         RouteList.initial, (route) => false);
            //   },
            //   child: NavigationListItem(
            //     title: TranslationConstants.logout.t(context),
            //     onPressed: () {
            //       BlocProvider.of<LoginBloc>(context).add(LogoutEvent());
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  // void _showDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     child: AppDialog(
  //       title: TranslationConstants.about,
  //       description: TranslationConstants.aboutDescription,
  //       buttonText: TranslationConstants.okay,
  //       image: Image.asset(
  //         'assets/pngs/tmdb_logo.png',
  //         height: Sizes.dimen_32.h,
  //       ),
  //     ),
  //   );
  // }
}
