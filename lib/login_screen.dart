import 'package:dropbox_clone/app_styles.dart';
import 'package:dropbox_clone/profile_screen.dart';
import 'package:dropbox_clone/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              width: double.infinity,
              height: 390.0,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/Illustration.png'),
              )),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal, vertical: kPaddingVertical),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 0.5,
                ),
                Text(
                  'Welcome to',
                  style: kQuestrialRegular.copyWith(
                      color: kBlackColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 6),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 0.5,
                ),
                Text(
                  'Dribbbox',
                  style: kQuestrialBold.copyWith(
                      color: kBlackColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 10),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 0.5,
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal! * 85,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Congue bibendum pellentesque mauris, nibh senectus dignissim euismod diam. Sed arcu eget et, id arcu ultricies scelerisque nisl.',
                    style: kQuestrialMedium.copyWith(
                        color: kLightGreyColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2,
                ),
                Text(
                  'Join for free.',
                  style: kQuestrialMedium.copyWith(
                      color: kLightGreyColor,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.9),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 45.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            backgroundColor:
                                const Color(0xff567DF4).withOpacity(0.15),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Smart id',
                                style: kQuestrialMedium.copyWith(
                                    color: kBlueColor,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3.9),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset('assets/fingerscan.svg'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 45,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: const Color(0xff567DF4),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sign In',
                                  style: kQuestrialMedium.copyWith(
                                      color: kWhiteColor,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! *
                                              3.9),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: kWhiteColor,
                                )
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 2.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Use social login',
                      style: kQuestrialMedium.copyWith(
                          color: kLightGreyColor,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.2),
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 1.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/instagram.svg')),
                    const SizedBox(height: 20.0),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/facebook.svg')),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 0.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Text(
                        'Create an account',
                        style: kQuestrialMedium.copyWith(
                            color: kLightGrey1Color,
                            fontSize: SizeConfig.blockSizeHorizontal! * 4.2),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
