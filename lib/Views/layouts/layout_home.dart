import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/notes_controllers.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:notes_app/extensions/paddingextension.dart';
import 'package:sizer/sizer.dart';

import 'item_list.dart';

class LayoutHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NotesController controller = Get.put(NotesController());
    return Obx(
      () {
        return SafeArea(
          child: controller.notesList.isNotEmpty
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.notesList.length,
                  itemBuilder: (context, index) => Card(
                    color: NotesColor.boxColor,
                    child: ListItem(
                      title: controller.notesList[index]['title'] ?? '',
                      data: controller.notesList[index]['data'] ?? '',
                    ),
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Illustration.png')
                        .onlyPadding(5.h, 0, 0, 0),
                    Text(
                      'Start Your Journey',
                      style: TextStyle(
                        color: NotesColor.blackColor,
                        fontFamily: 'poppinsRegular',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ).onlyPadding(10.sp, 0, 10.sp, 0),
                    Text(
                      'Every big step start with small step. Notes your first idea and start your journey!',
                      style: TextStyle(
                        color: NotesColor.testColor,
                        fontFamily: 'poppinsRegular',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Image.asset(
                      'assets/images/Arrow.png',
                    ),
                  ],
                ).symmetricPadding(15.w, 0),
        );
      },
    );
  }
}
