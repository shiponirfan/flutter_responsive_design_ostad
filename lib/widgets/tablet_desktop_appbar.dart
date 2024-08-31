import 'package:flutter/material.dart';

import 'app_logo_text.dart';

class TabletDesktopAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const TabletDesktopAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: 120,
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: AppLogoText(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Episodes',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'About',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    )),
              ],
            ),
          ),
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
