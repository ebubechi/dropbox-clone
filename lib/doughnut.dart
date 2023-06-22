import 'package:dropbox_clone/app_styles.dart';
// import 'package:dropbox_clone/size_config.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample2 extends StatefulWidget {
  const PieChartSample2({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          //  SizedBox(
          //   height: SizeConfig.blockSizeHorizontal! * 0,
          // ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 55,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      // final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 45.0 : 35.0;
      // const shadows = [Shadow(color: Colors.black, blurRadius: 0.1)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            showTitle: false,
            color: kYellowColor,
            value: 35,
            // title: '40%',
            radius: radius,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: kBlackColor,
            //   shadows: shadows,
            // ),
          );
        case 1:
          return PieChartSectionData(
            showTitle: false,
            color: kGreenColor1,
            value: 10,
            // title: '30%',
            radius: radius,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: kBlackColor,
            //   shadows: shadows,
            // ),
          ); 
        case 2:
          return PieChartSectionData(
            showTitle: false,
            color: kPurpleColor,
            value: 30,
            // title: '15%',
            radius: radius,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: kBlackColor,
            //   shadows: shadows,
            // ),
          );
        case 3:
          return PieChartSectionData(
            showTitle: false,
            color: kBlueColor,
            value: 25,
            // title: '15%',
            radius: radius,
            // titleStyle: TextStyle(
            //   fontSize: fontSize,
            //   fontWeight: FontWeight.bold,
            //   color: kBlackColor,
            //   shadows: shadows,
            // ),
          );
        // case 4:
        //   return PieChartSectionData(
        //     showTitle: false,
        //     color: kOrangeColor,
        //     value: 12,
        //     // title: '15%',
        //     radius: radius,
        //     // titleStyle: TextStyle(
        //     //   fontSize: fontSize,
        //     //   fontWeight: FontWeight.bold,
        //     //   color: kBlackColor,
        //     //   shadows: shadows,
        //     // ),
        //   );
        default:
          throw Error();
      }
    });
  }
}
