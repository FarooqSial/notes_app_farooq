import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/notes_controllers.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:sizer/sizer.dart';

import '../Views/Screens/screen_add_notes.dart';
import '../Views/layouts/layout_home.dart';
import '../Views/layouts/layout_profile.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Navigation extends StatelessWidget {
  List layouts = [
    LayoutHome(),
    LayoutProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    NotesController controller = Get.put(NotesController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: NotesColor.boxColor,
        onPressed: () {
          Get.to(
            ScreenAddNotes(),
          );
        },
        child: Icon(
          Icons.add,
          size: 20.sp,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Obx(() {
        return layouts[controller.selectedIndex.value];
      }),
      bottomNavigationBar: Obx(() {
        return AnimatedBottomNavigationBar(
          activeColor: NotesColor.boxColor,
          inactiveColor: NotesColor.testColor,
          icons: [
            Icons.home,
            Icons.person,
          ],
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.defaultEdge,
          activeIndex: controller.selectedIndex.value,
          onTap: (int value) {
            controller.selectedIndex.value = value;
          },
        );
      }),
    );
  }
}
