import 'package:dropbox_clone/app_styles.dart';
import 'package:dropbox_clone/login_screen.dart';
import 'package:dropbox_clone/size_config.dart';
import 'package:dropbox_clone/zoom_drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
          floatingActionButton: SizedBox(
              width: 60.0,
              height: 60.0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: kPurpleColor,
                child: const Icon(
                  Icons.add,
                  color: kWhiteColor,
                ),
              )),
          body: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Color> textColors = [
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor,
    kGreenColor,
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
    kLightBlueColor,
    kLightYellowColor,
    kLightRedColor,
    kLightGreenColor,
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
    'folder_icon_blue.svg',
    'folder_icon_yellow.svg',
    'folder_icon_red.svg',
    'folder_icon_green.svg',
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
    'more_vertical_icon_blue.svg',
    'more_vertical_icon_yellow.svg',
    'more_vertical_icon_red.svg',
    'more_vertical_icon_green.svg',
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
    'Mobile apps',
    'SVG icons',
    'Prototypes',
    'Avatars',
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
    'December 20.2020',
    'October 14.2020',
    'September 20.2020',
    'November 14.2020',
    'December 20.2020',
    'October 14.2020',
    'September 20.2020',
    'November 14.2020',
  ];

  final int crossAxisCount = 2;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Axis scrollDirection = Axis.vertical;
    const mainAxisExtent = 107.0;
    return SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal, vertical: kPaddingVertical),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your dribbbox",
                  style: kQuestrialBold.copyWith(
                      color: kBlackColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 6),
                ),
                InkWell(
                  child: SvgPicture.asset('assets/menu_icon.svg'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 4,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  borderSide: const BorderSide(
                    width: 1.0,
                    color: kGreyColor,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  borderSide: const BorderSide(
                    style: BorderStyle.solid,
                    width: 1.0,
                    color: kGreyColor,
                  ),
                ),
                prefixIcon: Container(
                    width: 24.0,
                    height: 24.0,
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/search_icon.svg')),
                hintText: 'Search folder',
                hintStyle: kQuestrialMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                  color: kDarkGreyColor,
                ),
              ),
              style: kQuestrialMedium.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                color: kDarkGreyColor,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Recent',
                        style: kQuestrialSemibold.copyWith(
                            color: kLightBlackColor,
                            fontSize: SizeConfig.blockSizeHorizontal! * 4),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                      SvgPicture.asset('assets/arrow_down_icon.svg'),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/sort_icon.svg')),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
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
            )
          ],
        ),
      )),
    );
  }
}

class GridWidget extends StatelessWidget {
  const GridWidget({
    super.key,
    required this.folderColors,
    required this.folderIconColors,
    required this.moreIconColors,
    required this.folderNames,
    required this.textColors,
    required this.folderDates,
    required this.crossAxisCount,
    required this.scrollDirection,
    required this.mainAxisExtent,
  });

  final List<Color> folderColors;
  final List<String> folderIconColors;
  final List<String> moreIconColors;
  final List<String> folderNames;
  final List<Color> textColors;
  final List<String> folderDates;
  final int crossAxisCount;
  final Axis scrollDirection;
  final double mainAxisExtent;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
          mainAxisSpacing: SizeConfig.blockSizeHorizontal! * 2,
          mainAxisExtent: mainAxisExtent,
        ),
        itemCount: folderColors.length,
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.symmetric(
                horizontal: 0.5 * kPaddingHorizontal,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: folderColors[index]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ZoomDrawerScreen()));
                        },
                        child: SvgPicture.asset(
                            'assets/${folderIconColors[index]}'),
                      ),
                      InkWell(
                        onTap: () {},
                        child:
                            SvgPicture.asset('assets/${moreIconColors[index]}'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 1,
                  ),
                  Text(
                    folderNames[index],
                    style: kQuestrialSemibold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                        color: textColors[index]),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 0.3,
                  ),
                  Text(
                    folderDates[index],
                    style: kQuestrialRegular.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                        color: textColors[index]),
                  ),
                ],
              ));
        });
  }
}
  