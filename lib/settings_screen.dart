import 'package:dropbox_clone/size_config.dart';
import 'package:flutter/material.dart';

import 'app_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kPaddingHorizontal, vertical: kPaddingVertical * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(onTap: () {Navigator.pop(context);}, child: const Icon(Icons.arrow_back_ios)),
            ],
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 3,
          ),
          Text(
            'Setting',
            style: kQuestrialBold.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 7),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 3,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Add account',
                        style: kQuestrialMedium.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4),
                      )),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 3,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text('Change password',
                          style: kQuestrialMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4))),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 3,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text('Change language',
                          style: kQuestrialMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4))),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 3,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text('Upgrade plan',
                          style: kQuestrialMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4))),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 3,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text('Multiple account',
                          style: kQuestrialMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4))),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 5,
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Enable sync',
                            style: kQuestrialSemibold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 4.2)),
                      Switch(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Enable 2 step verification',
                        style: kQuestrialSemibold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4.2)),
                      Switch(
                        value: true,
                        onChanged: (value) {}, 
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
