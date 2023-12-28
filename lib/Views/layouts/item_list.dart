import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/constants.dart';

class ListItem extends StatelessWidget {
  String? title;
  String? data;

  ListItem({
    this.title,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 10.sp),
      leading: CircleAvatar(
        radius: 20.sp,
        backgroundColor: NotesColor.profileColor,
        child: Icon(Icons.lightbulb_outline_sharp),
      ),
      title: Text(
        title!,
        style: TextStyle(
          color: NotesColor.whiteColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          fontFamily: 'poppinsBold',
        ),
      ),
      subtitle: Text(
        data!,
        style: TextStyle(
          color: NotesColor.whiteColor,
          fontSize: 10.sp,
        ),
      ),
    );
  }
}
