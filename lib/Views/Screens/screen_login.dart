import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/Views/Screens/screen_register.dart';
import 'package:notes_app/controllers/notes_controllers.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:notes_app/widgets/custom_container.dart';
import 'package:notes_app/widgets/custom_textfield.dart';
import 'package:notes_app/extensions/paddingextension.dart';
import 'package:sizer/sizer.dart';

import 'forget_password.dart';

class ScreenLogin extends StatelessWidget {
  // Rx<bool> obscureText = true.obs;
  // IconData suffixIcon = Icons.remove_red_eye_outlined;

  @override
  Widget build(BuildContext context) {
    NotesController controller = Get.put(NotesController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: NotesColor.whiteColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Let’s Login',
                style: TextStyle(
                  color: NotesColor.blackColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppinsBold',
                  fontSize: 28.sp,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'And notes your idea',
                style: TextStyle(
                  color: NotesColor.testColor,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'poppinsRegular',
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Email Address',
                style: TextStyle(
                  color: NotesColor.blackColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppinsRegular',
                  fontSize: 13.sp,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              CustomTextField(
                hintText: 'Example: johndoe@gmail.com',
                keyboardType: TextInputType.emailAddress,
                isFilled: false,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'Password',
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
              Obx(() {
                return CustomTextField(
                  hintText: 'Password',
                  keyboardType: TextInputType.name,
                  isFilled: false,
                  obscureText: controller.obscureText.value,
                  suffixIcon: controller.obscureText.value
                      ? Icons.visibility_outlined
                      : Icons.visibility_off,
                  onIconTap: () {
                    controller.togglePassword();
                  },
                );
              }),
              SizedBox(
                height: 2.5.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                    ForgetPassword(),
                  );
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: NotesColor.boxColor,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'poppinsRegular',
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              CustomContainer(
                color: NotesColor.boxColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: NotesColor.whiteColor,
                        fontSize: 13.sp,
                        fontFamily: 'poppinsRegular',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: NotesColor.whiteColor,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      indent: 15,
                      endIndent: 10,
                    ),
                  ),
                  Text(
                    'Or',
                    style: TextStyle(
                      color: NotesColor.testColor,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'poppinsRegular',
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      indent: 10,
                      endIndent: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomContainer(
                border: Border.all(
                  color: NotesColor.hintColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/googlec.png',
                    ).allPadding(7.sp),
                    Text(
                      'Login with Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        fontFamily: 'poppinsRegular',
                        color: NotesColor.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                    ScreenRegister(),
                  );
                },
                child: Text(
                  'Don’t have any account? Register here',
                  style: TextStyle(
                    color: NotesColor.boxColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'poppinsRegular',
                  ),
                ),
              ),
            ],
          ).symmetricPadding(25.sp, 0),
        ),
      ),
    );
  }
}
