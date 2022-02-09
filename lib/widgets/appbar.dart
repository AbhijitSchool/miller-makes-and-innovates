import 'package:flutter/material.dart';

class UpperAppBar extends StatelessWidget with PreferredSizeWidget {
  const UpperAppBar({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text('Book Recommendations'),
      actions: [
        //TODO: Replace text with a hyperlink
        Text('Email me!'),
        //TODO: Add weather the user is loged in or not
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
