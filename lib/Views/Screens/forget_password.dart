import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:notes_app/widgets/custom_container.dart';
import 'package:notes_app/extensions/paddingextension.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/custom_textfield.dart';
import 'create_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: NotesColor.whiteColor,
      appBar: AppBar(
        backgroundColor: NotesColor.whiteColor,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: NotesColor.boxColor,
            size: 15,
          ),
        ),
        title: Text(
          'Back to Login',
          style: TextStyle(
              color: NotesColor.boxColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: 'poppinsRegular'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/onboardingp.png',
          ).symmetricPadding(20.sp, 10.sp),
          Text(
            'Forgot Password',
            style: TextStyle(
              color: NotesColor.blackColor,
              fontWeight: FontWeight.w600,
              fontFamily: 'poppinsBold',
              fontSize: 25.sp,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Insert your email address to receive a code for creating a new password',
            style: TextStyle(
              color: NotesColor.testColor,
              fontWeight: FontWeight.w400,
              fontFamily: 'poppinsRegular',
              fontSize: 12.sp,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Email Address',
            style: TextStyle(
              color: NotesColor.blackColor,
              fontWeight: FontWeight.w500,
              fontFamily: 'poppinsRegular',
              fontSize: 12.sp,
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          CustomTextField(
            hintText: 'anto_michael@gmail.com',
            keyboardType: TextInputType.emailAddress,
            isFilled: false,
          ),
          SizedBox(
            height: 6.h,
          ),
          CustomContainer(
            color: NotesColor.boxColor,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Get.to(
                    CreatePassword(),
                  );
                },
                child: Text(
                  'Send Code',
                  style: TextStyle(
                    color: NotesColor.whiteColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'poppinsRegular',
                  ),
                ),
              ),
            ),
          ),
        ],
      ).symmetricPadding(25.sp, 0),
    );
  }
}
