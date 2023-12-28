// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:notes_app/helpers/constants.dart';
// import 'package:sizer/sizer.dart';
//
// class CustomButton extends StatelessWidget {
//   Color? testColor = NotesColor.boxcolor;
//   Color? backgroundColor = NotesColor.whitecolor;
//   Color? buttonColor;
//   double? borderRadius;
//   final String? text;
//   bool? isDoubleIcon;
//
//   CustomButton({
//     this.buttonColor,
//     this.borderRadius,
//     this.text,
//     this.isDoubleIcon,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: 9.sp,
//       ),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(borderRadius ?? 30),
//         color: buttonColor == NotesColor.boxcolor ? testColor : backgroundColor,
//       ),
//       child: isDoubleIcon
//           ? Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 SizedBox(),
//                 Text(
//                   text,
//                   style: TextStyle(
//                     color: buttonColor == NotesColor.boxcolor
//                         ? backgroundColor
//                         : testColor,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 13.sp,
//                     fontFamily: 'poppinsRegular',
//                   ),
//                 ),
//                 Icon(
//                   Icons.arrow_forward,
//                   color: buttonColor == NotesColor.boxcolor
//                       ? backgroundColor
//                       : testColor,
//                 ),
//               ],
//             )
//           : Text(
//               text,
//               style: TextStyle(
//                 color: buttonColor == NotesColor.boxcolor
//                     ? testColor
//                     : backgroundColor,
//                 fontWeight: FontWeight.w400,
//                 fontSize: 13.sp,
//                 fontFamily: 'poppinsRegular',
//               ),
//             ),
//     );
//   }
// }
