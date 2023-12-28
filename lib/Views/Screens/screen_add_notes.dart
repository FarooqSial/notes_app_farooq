import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes_app/controllers/notes_controllers.dart';
import 'package:notes_app/helpers/constants.dart';
import 'package:notes_app/widgets/custom_textfield.dart';
import 'package:notes_app/extensions/paddingextension.dart';
import 'package:sizer/sizer.dart';

class ScreenAddNotes extends StatelessWidget {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _dataController = TextEditingController();

  // List<Map<String, String>> notesList = [];

  @override
  Widget build(BuildContext context) {
    NotesController controller = Get.put(NotesController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Add Notes',
                      style: TextStyle(
                        color: NotesColor.blackColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppinsRegular',
                      ),
                    ),
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                      color: NotesColor.fulBlackColor,
                      fontSize: 10.sp,
                      fontFamily: 'poppinsRegular',
                    ),
                  ),
                  CustomTextField(
                    hintText: 'Muhammad Ali Hassan Sheikh',
                    controller: _titleController,
                    onIconTap: () {
                      _titleController.clear();
                    },
                    keyboardType: TextInputType.name,
                    isFilled: true,
                    fontSize: 11.sp,
                    suffixIcon: Icons.cancel_outlined,
                  ),
                  Text(
                    'Write your data here',
                    style: TextStyle(
                      color: NotesColor.fulBlackColor,
                      fontSize: 10.sp,
                      fontFamily: 'poppinsRegular',
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                    child: CustomTextField(
                      hintText:
                          'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                      keyboardType: TextInputType.name,
                      isFilled: true,
                      fontSize: 11.sp,
                      maxLines: 15,
                      controller: _dataController,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                  Map<String, String> newNotes = {
                    "title": _titleController.text,
                    "data": _dataController.text,
                  };
                  controller.notesList.add(newNotes);
                  _titleController.clear();
                  _dataController.clear();
                  Get.back();
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 0),
                decoration: BoxDecoration(
                  color: NotesColor.boxColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: NotesColor.whiteColor,
                        fontSize: 12.sp,
                        fontFamily: 'poppinsRegular'),
                  ),
                ),
              ).onlyPadding(0, 0, 20.sp, 0),
            ),
          ],
        ).symmetricPadding(25.sp, 0),
      ),
    );
  }
}
