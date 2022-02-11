import 'package:flutter/material.dart';
import 'package:miller_makes_and_innovates/widgets/profile.dart';
import 'login.dart';

class UpperAppBar extends StatelessWidget with PreferredSizeWidget {
  const UpperAppBar({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: const Text('Book Recommendations'),
      actions: [
        //TODO: Replace text with a hyperlink
        Text('Email me!'),
        // TODO: Profile(logoutAction, name, picture)
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
