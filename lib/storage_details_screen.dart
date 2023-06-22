import 'package:dropbox_clone/doughnut.dart';
// import 'package:dropbox_clone/zoom_drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_styles.dart';
import 'settings_screen.dart';
import 'size_config.dart';

class StorageDetailsScreen extends StatelessWidget {
  StorageDetailsScreen({super.key});
  final List<String> svgAssets = [
    'Ellipse_purple.svg',
    'Ellipse_yellow.svg',
    'Ellipse_green.svg',
    'Ellipse_blue.svg'
  ];
  final List<String> titles = ['Design files', 'Images', 'Videos', 'Documents'];
  final List<String> subtitles = [
    '38.66 GB',
    '28.80 GB',
    '12.60 GB',
    '8.96 GB'
  ];
  final List<Color> colors = [
    kPurpleColor,
    kYellowColor,
    kGreenColor1,
    kBlueColor
  ];
  final List<List<double>> axis = [
    [0.6, 0.4],
    [0.5, 0.5],
    [0.8, 0.2],
    [0.3, 0.7]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kPaddingHorizontal, vertical: kPaddingVertical * 3),
      child: Column(
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
                'Storage details',
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
          const PieChartSample2(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Available',
                style: kQuestrialSemibold.copyWith(
                    color: kLightGreyColor,
                    fontSize: SizeConfig.blockSizeHorizontal! * 5),
              ),
              Text(
                '43.36 GB',
                style: kQuestrialBold.copyWith(
                    color: kBlackColor,
                    fontSize: SizeConfig.blockSizeHorizontal! * 6.5),
              ),
              Text(
                'Total 128 GB',
                style: kQuestrialSemibold.copyWith(
                    color: kLightGreyColor,
                    fontSize: SizeConfig.blockSizeHorizontal! * 5),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.blockSizeHorizontal! * 0,
          ),
          ListsView(
            titles: titles,
            svgAssets: svgAssets,
            subtitles: subtitles,
            colors: colors,
            axis: axis,
          ),
          SizedBox(
            height: SizeConfig.blockSizeHorizontal! * 2,
          ),
          InkWell(
            onTap:() {
              // controller.toggle();
              // Navigator.push(context, MaterialPageRoute(builder: (context) =>  const ZoomDrawerScreen()));
            },
            child: Text(
              'Export details',
              style: kQuestrialMedium.copyWith(color: kLightBlackColor),
            ),
          )
        ],
      ),
    ));
  }
}

class ListsView extends StatelessWidget {
  const ListsView({
    required this.titles,
    required this.svgAssets,
    required this.subtitles,
    required this.colors,
    required this.axis,
    super.key,
  });
  final List<String> svgAssets;
  final List<String> titles;
  final List<String> subtitles;
  final List<Color> colors;
  final List<List<double>> axis;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemExtent: 60,
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: SvgPicture.asset('assets/${svgAssets[index]}'),
          title: Text(
            titles[index],
            style: kQuestrialSemibold.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 4),
          ),
          subtitle: Text(
            subtitles[index],
            style: kQuestrialRegular.copyWith(color: kLightGrey1Color),
          ),
          trailing: Container(
            width: SizeConfig.blockSizeHorizontal! * 30,
            height: SizeConfig.blockSizeHorizontal! *
                0.9, // adjust the height as needed
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey,
                  colors[index]
                ], // adjust the colors as needed
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: axis[index], // adjust the stops as needed
              ),
            ),
          ),
        );
      },
    );
  }
}
