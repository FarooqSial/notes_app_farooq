import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/Views/Screens/screen_login.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:notes_app/widgets/custom_container.dart';
import 'package:notes_app/extensions/paddingextension.dart';
import 'package:sizer/sizer.dart';

class ScreenOnBoarding extends StatelessWidget {
  const ScreenOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.boxColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/onboardingp.png',
            ),
          ).symmetricPadding(25.sp, 15.sp),
          Text(
            'Jot Down anything you want to achieve, today or in the future',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: NotesColor.whiteColor,
              fontSize: 16.sp,
              fontFamily: 'poppinsRegular',
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          GestureDetector(
            onTap: () {
              Get.to(
                ScreenLogin(),
              );
            },
            child: CustomContainer(
              color: NotesColor.whiteColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(),
                  Text(
                    'Let’s Get Started',
                    style: TextStyle(
                      color: NotesColor.boxColor,
                      fontSize: 14.sp,
                      fontFamily: 'poppinsRegular',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // Spacer(),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: NotesColor.boxColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ).symmetricPadding(20.sp, 0),
    );
  }
}
