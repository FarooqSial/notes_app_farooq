import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';

class LayoutProfile extends StatelessWidget {
  const LayoutProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Profile',
                style: TextStyle(
                  color: NotesColor.blackColor,
                  fontFamily: 'poppinsRegular',
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ),
            ),
            SizedBox(
              height: 30.sp,
            ),
            Text(
              'Michael Antonio',
              style: TextStyle(
                color: NotesColor.blackColor,
                fontFamily: 'poppinsRegular',
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Row(
              children: [
                Icon(
                  Icons.mail_outlined,
                  color: NotesColor.testColor,
                ),
                Text(
                  'anto_michael@gmail.com',
                  style: TextStyle(
                    color: NotesColor.testColor,
                    fontFamily: 'poppinsRegular',
                    fontSize: 12.sp,
                  ),
                ).paddingOnly(left: 10.sp),
              ],
            ),
            SizedBox(
              height: 20.sp,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: NotesColor.boxColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Icon.png'),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: NotesColor.boxColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ).paddingOnly(left: 10.sp)
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 20.sp,
            ),
            Text(
              'APP SETTINGS',
              style: TextStyle(
                color: NotesColor.testColor,
                fontSize: 8.sp,
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.lock_outline_sharp,
                  color: NotesColor.blackColor,
                ),
                title: Text(
                  'Change Password',
                  style: TextStyle(
                    color: NotesColor.blackColor,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            SizedBox(
              height: 5.sp,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 5.sp,
            ),
            Card(
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: NotesColor.lightRedColor,
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                    color: NotesColor.lightRedColor,
                  ),
                ),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 20.sp),
      ),
    );
  }
}
