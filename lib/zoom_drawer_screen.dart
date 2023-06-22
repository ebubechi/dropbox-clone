import 'package:dropbox_clone/app_styles.dart';
import 'package:dropbox_clone/size_config.dart';
import 'package:dropbox_clone/storage_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

final ZoomDrawerController zoomDrawerController = ZoomDrawerController();

class ZoomDrawerScreen extends StatefulWidget {
  const ZoomDrawerScreen({super.key});

  @override
  State<ZoomDrawerScreen> createState() => _ZoomDrawerScreenState();
}

class _ZoomDrawerScreenState extends State<ZoomDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      style: DrawerStyle.defaultStyle,
      menuScreenWidth: double.infinity,
      menuBackgroundColor: kWhiteColor,
      menuScreenOverlayColor: kWhiteColor,
      shadowLayer1Color: const Color(0x75D5D3D3),
      shadowLayer2Color: kGreyColor,
      menuScreen: const MenuScreen(),
      mainScreenTapClose: false,
      mainScreen: StorageDetailsScreen(),
      borderRadius: 50.0,
      duration: const Duration(milliseconds: 2000),
      showShadow: true,
      angle: 0.0,
      drawerShadowsBackgroundColor: kDarkGreyColor,
      slideWidth: 230,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kTransparentColor,
        body: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //! don't put anything here!
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                    width: 260,
                    height: 115,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(60),
                      ),
                      color: kWhiteColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset('assets/profile.png')),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Savanah Nguyen',
                              style: kQuestrialBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 4),
                            ),
                            Text(
                              'UI/UX designer',
                              style: kQuestrialRegular.copyWith(fontSize: SizeConfig.blockSizeHorizontal! * 3.5, color: kDarkGreyColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(Icons.cancel_outlined),
                  )
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeHorizontal! * 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const Text('Home'),
                  // SizedBox(
                  //   height: SizeConfig.blockSizeHorizontal! * 5,
                  // ),
                  // const Text('Profile'),
                  // SizedBox(
                  //   height: SizeConfig.blockSizeHorizontal! * 5,
                  // ),
                  // const Text('Storage'),
                  // SizedBox(
                  //   height: SizeConfig.blockSizeHorizontal! * 5,
                  // ),
                  // const Text('Shared'),
                  // SizedBox(
                  //   height: SizeConfig.blockSizeHorizontal! * 5,
                  // ),
                  // const Text('State'),
                  // SizedBox(
                  //   height: SizeConfig.blockSizeHorizontal! * 5,
                  // ),
                  // const Text('Settings'),
                  // SizedBox(
                  //   height: SizeConfig.blockSizeHorizontal! * 5,
                  // ),
                  // const Text('Help'),
                  const SizedBox(height: 310.0, child: CustomMenuDrawer()),

                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal! * 55,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          zoomDrawerController.close;
                        },
                        child: SvgPicture.asset('assets/logout.svg'),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 5,
                      ),
                      Text('Logout', style: kQuestrialSemibold.copyWith(fontSize: SizeConfig.blockSizeHorizontal! * 4),)
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeHorizontal! * 10,
                  ),
                  Text('version 3.0.1', style: kQuestrialRegular.copyWith(fontSize: SizeConfig.blockSizeHorizontal! * 3, color: kDarkGreyColor),)
                ],
              ),
            ),
          ],
        ));
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: kPurpleColor,
    ));
  }
}

class CustomMenuDrawer extends StatefulWidget {
  const CustomMenuDrawer({super.key});

  @override
  CustomMenuDrawerState createState() => CustomMenuDrawerState();
}

class CustomMenuDrawerState extends State<CustomMenuDrawer> {
  int _selectedIndex = 0;

  final List<String> _options = [
    'Home',
    'Profile',
    'Storage',
    'Shared',
    'State',
    'Settings',
    'Help',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _options.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          splashColor: Colors.transparent,
          title: Text(_options[index], style: kQuestrialMedium.copyWith(fontSize: SizeConfig.blockSizeHorizontal! * 4),),
          leading: index == _selectedIndex ? indicator() : const SizedBox(),
          selected: index == _selectedIndex,
          // selectedTileColor: Colors.blue, // Change this to the desired color
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
        );
      },
    );
  }
}

Widget indicator() {
  return Container(
    height: 15.0,
    width: 3.0,
    decoration: BoxDecoration(
        color: kDarkBlueColor, borderRadius: BorderRadius.circular(1.5)),
  );
}
