import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class MobileDrawerMenu extends StatelessWidget {
  const MobileDrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: AppColors.primaryColor,
            height: 200,
            width: double.infinity,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Skill Up Now'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Tap Here'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Episodes',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.movie_filter_outlined,
                    size: 28,
                    color: Colors.black,
                  ),
                  minLeadingWidth: 40,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.question_answer_outlined,
                    size: 28,
                    color: Colors.black,
                  ),
                  minLeadingWidth: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
