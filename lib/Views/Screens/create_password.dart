import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:notes_app/extensions/paddingextension.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/custom_textfield.dart';
import '../../widgets/navigation.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({Key? key}) : super(key: key);

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
            Navigator.pop(context);
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create a New Password',
              style: TextStyle(
                color: NotesColor.blackColor,
                fontWeight: FontWeight.w600,
                fontFamily: 'poppinsBold',
                fontSize: 26.sp,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Your new password should be different from the previous password',
              style: TextStyle(
                color: NotesColor.testColor,
                fontWeight: FontWeight.w400,
                fontFamily: 'poppinsRegular',
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'New Password',
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
              hintText: 'Password',
              keyboardType: TextInputType.name,
              obscureText: true,
              isFilled: false,
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'min. 8 character, combination of 0-9, A-Z, a-z',
              style: TextStyle(
                color: NotesColor.testColor,
                fontWeight: FontWeight.w400,
                fontFamily: 'poppinsRegular',
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Retype New Password',
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
              hintText: 'Password',
              keyboardType: TextInputType.name,
              obscureText: true,
              isFilled: false,
            ),
            SizedBox(
              height: 25.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  Navigation(),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 0),
                decoration: BoxDecoration(
                  color: NotesColor.boxColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Create Password',
                    style: TextStyle(
                        color: NotesColor.whiteColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        fontFamily: 'poppinsRegular'),
                  ),
                ),
              ),
            ),
          ],
        ).symmetricPadding(25.sp, 0),
      ),
    );
  }
}
