import 'package:dropbox_clone/main.dart';
import 'package:dropbox_clone/settings_screen.dart';
import 'package:dropbox_clone/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_styles.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final List<Color> textColors = [
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
  ];
  final List<Color> folderColors = [
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
  ];
  final List<String> folderIconColors = [
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
  ];
  final List<String> moreIconColors = [
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
  ];
  final List<String> folderNames = [
    'Mobile apps',
    'SVG icons',
    'Prototypes',
    'Avatars',
  ];
  final List<String> folderDates = [
    'December 20.2020',
    'October 14.2020',
    'September 20.2020',
    'November 14.2020',
  ];

  @override
  Widget build(BuildContext context) {
    const int crossAxisCount = 2;
    const Axis scrollDirection = Axis.horizontal;
    const double mainAxisExtent = 107;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal, vertical: kPaddingVertical * 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                Text(
                  'My profile',
                  style: kQuestrialSemibold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      color: kLightBlackColor),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingsScreen()));
                    },
                    icon: const Icon(Icons.more_horiz_rounded))
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 1.5,
            ),
            Card(color: kWhiteColor,
              elevation: 2.5, shadowColor: Colors.white54,
              child: Padding(
                padding: EdgeInsets.all(kPaddingHorizontal),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: CircleAvatar(
                            child: Image.asset('assets/profile.png'),
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 20,
                        ),
                        SvgPicture.asset('assets/pro_label.svg')
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 2.5,
                    ),
                    Text(
                      'Savannah Nguyen',
                      style: kQuestrialBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 5),
                    ),
                    Text('UI/UX designer',
                        style: kQuestrialMedium.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4,
                            color: kLightBlackColor)),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Congue bibendum pellentesque mauris, nibh senectus .',
                      style: kQuestrialRegular.copyWith(color: kLightGreyColor),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My folders',
                  style: kQuestrialSemibold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      color: kLightBlackColor),
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.tune)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
              ],
            ),
            GridWidget(
              folderColors: folderColors,
              folderIconColors: folderIconColors,
              moreIconColors: moreIconColors,
              folderNames: folderNames,
              textColors: textColors,
              folderDates: folderDates,
              crossAxisCount: crossAxisCount,
              scrollDirection: scrollDirection,
              mainAxisExtent: mainAxisExtent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent uploads',
                  style: kQuestrialSemibold.copyWith(),
                ),
                InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/arrangevertical.svg'))
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 2,
            ),
            Row(
              children: [
                Image.asset('assets/word.png'),
                SizedBox(width: SizeConfig.blockSizeHorizontal! * 4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Project.docx',
                        style: kQuestrialSemibold.copyWith(
                            color: kLightBlackColor)),
                    SizedBox(height: SizeConfig.blockSizeVertical! * 0.5),
                    Text(
                      'November 22,2020',
                      style:
                          kQuestrialRegular.copyWith(color: kLightGrey1Color),
                    ),
                  ],
                ),
                SizedBox(width: SizeConfig.blockSizeHorizontal! * 34),
                Text(
                  '300kb',
                  style: kQuestrialRegular.copyWith(color: kLightGrey1Color),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
