import 'package:flutter/material.dart';
import 'package:flutter_responsive_design_ostad/utils/screen_utils.dart';
import 'package:flutter_responsive_design_ostad/widgets/app_logo_text.dart';
import 'package:flutter_responsive_design_ostad/widgets/app_text_button.dart';
import 'package:flutter_responsive_design_ostad/widgets/mobile_drawer_menu.dart';
import 'package:flutter_responsive_design_ostad/widgets/responsive_builder.dart';
import '../../widgets/tablet_desktop_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        mobile: _mobileAppContent(),
        tablet: _tabletAppContent(),
        desktop: _desktopAppContent());
  }

  Widget _mobileAppContent() {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 120, actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: AppLogoText(),
        )
      ]),
      drawer: const MobileDrawerMenu(),
      body: _mobileTabletContentDesign(),
    );
  }

  Widget _tabletAppContent() {
    return Scaffold(
      appBar: const TabletDesktopAppBar(),
      body: _mobileTabletContentDesign(),
    );
  }

  Widget _desktopAppContent() {
    return Scaffold(
      appBar: const TabletDesktopAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _bodyContentText(
              textCenter: TextAlign.left,
              alignment: CrossAxisAlignment.start,
              headingSize: 64,
              bodySize: 20,
            ),
            const AppTextButton(),
          ],
        ),
      ),
    );
  }

  Widget _mobileTabletContentDesign() {
    final size = MediaQuery.of(context).size;
    final DeviceType deviceType = ScreenUtils.getDeviceType(size.width);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _bodyContentText(
                textCenter: TextAlign.center,
                alignment: CrossAxisAlignment.center,
                headingSize: deviceType == DeviceType.tablet ? 60 : 44,
                bodySize: deviceType == DeviceType.tablet ? 18 : 14),
            const SizedBox(
              height: 50,
            ),
            const AppTextButton(),
          ],
        ),
      ),
    );
  }

  Widget _bodyContentText(
      {required TextAlign textCenter,
      required CrossAxisAlignment alignment,
      required double headingSize,
      required double bodySize}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: alignment,
      children: [
        Text(
          'Flutter Web.\nThe Basics'.toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontSize: headingSize,
            fontWeight: FontWeight.w900,
            height: 1,
          ),
          textAlign: textCenter,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'In this course we will go over the basics of using\nFlutter Web for development. Topics will include\nResponsive Layout, Deploying, Font Changes, Hover\nfunctionality, Modals and more.',
          style: TextStyle(
            color: Colors.black,
            fontSize: bodySize,
          ),
          textAlign: textCenter,
        ),
      ],
    );
  }
}
