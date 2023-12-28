import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:notes_app/extensions/paddingextension.dart';
import 'package:sizer/sizer.dart';
import '../../controllers/notes_controllers.dart';
import '../../widgets/custom_container.dart';
import '../../widgets/custom_textfield.dart';

class ScreenRegister extends StatelessWidget {
  const ScreenRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NotesController controller = Get.put(NotesController());
    return Scaffold(
      backgroundColor: NotesColor.whiteColor,
      resizeToAvoidBottomInset: false,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Register',
                style: TextStyle(
                  color: NotesColor.blackColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppinsBold',
                  fontSize: 28.sp,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'And start taking notes',
                style: TextStyle(
                  color: NotesColor.testColor,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'poppinsRegular',
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              Text(
                'Full Name',
                style: TextStyle(
                  color: NotesColor.blackColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppinsRegular',
                  fontSize: 11.sp,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              CustomTextField(
                hintText: 'Example: John Doe',
                keyboardType: TextInputType.emailAddress,
                isFilled: false,
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
                  fontSize: 11.sp,
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
                height: 3.h,
              ),
              Text(
                'Password',
                style: TextStyle(
                  color: NotesColor.blackColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppinsRegular',
                  fontSize: 11.sp,
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
                  obscureText: controller.obscureText1.value,
                  suffixIcon: controller.obscureText1.value
                      ? Icons.visibility_outlined
                      : Icons.visibility_off,
                  onIconTap: () {
                    controller.togglePassword1();
                  },
                );
              }),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Retype Password',
                style: TextStyle(
                  color: NotesColor.blackColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'poppinsRegular',
                  fontSize: 11.sp,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              CustomTextField(
                hintText: 'Retype Password',
                keyboardType: TextInputType.name,
                obscureText: true,
                isFilled: false,
              ),
              SizedBox(
                height: 3.h,
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
                      'Register',
                      style: TextStyle(
                        color: NotesColor.whiteColor,
                        fontSize: 14.sp,
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
                height: 3.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 15,
                      endIndent: 10,
                      thickness: 2,
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
                      indent: 10,
                      endIndent: 15,
                      thickness: 2,
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
                    ).allPadding(5.sp),
                    SizedBox(
                        // width: 20,
                        ),
                    Text(
                      'Register with Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
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
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Text(
                    'Already have an account? Login here',
                    style: TextStyle(
                      color: NotesColor.boxColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'poppinsRegular',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
            ],
          ).symmetricPadding(25.sp, 0),
        ),
      ),
    );
  }
}
