// import 'package:flutter/material.dart';
// import 'package:resume_builder/core/custom_widgets/custom_text.dart';
// import 'package:resume_builder/core/utils/constants/contstants.dart';
// import 'package:resume_builder/features/personal_detail_page/presentation/pages/personal_detail_page.dart';

// class DemoPage extends StatefulWidget {
//   const DemoPage({super.key});

//   @override
//   State<DemoPage> createState() => _DemoPageState();
// }

// class _DemoPageState extends State<DemoPage> {
//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double top = 50;

//     return Scaffold(
//       backgroundColor: Colors.grey.shade200,
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {},
//         ),
//         actions: [
//           TextButton.icon(
//             style: ElevatedButton.styleFrom(
//               elevation: 0,
//               shadowColor: Colors.deepOrange,
//               backgroundColor: Colors.deepOrange,
//             ),
//             onPressed: () => Navigator.pop(context),
//             icon: const Icon(
//               Icons.remove_red_eye,
//               color: Colors.white,
//             ),
//             label: customText(context: context, text: 'View CV'),
//           ),
//         ],
//         elevation: 0,
//         title: customText(context: context, text: 'Profile'),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(
//             height: 100,
//             child: Stack(
//               alignment: Alignment.center,
//               clipBehavior: Clip.none,
//               children: [
//                 Container(
//                   color: Colors.deepOrange,
//                   height: 100,
//                   width: double.infinity,
//                 ),
//                 Positioned(
//                   top: top,
//                   left: 0,
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: height * 0.01),
//                     height: 150,
//                     width: 100,
//                     color: Colors.white,
//                     child: _buildCard(
//                         onTap: () => Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     const PersonalDetailPage(),
//                               ),
//                             ),
//                         icon: Icons.account_circle,
//                         text: 'Personal \n Details'),
//                   ),
//                 ),
//                 Positioned(
//                   top: top,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Positioned(
//                   top: top,
//                   right: 0,
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: height * 0.01),
//                     height: 100,
//                     width: 100,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Text('data')
//         ],
//       ),
//     );
//   }

//   Widget _buildCard({String? text, IconData? icon, Function()? onTap}) {
//     double height = mediaQueryHeight(context);
//     double width = mediaQueryWidth(context);
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: height * 0.007),
//         height: height * 0.15,
//         width: width * 0.3,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(height * 0.01),
//           color: Colors.white,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             SizedBox(
//               height: height * 0.01,
//             ),
//             Icon(
//               icon,
//               size: height * 0.06,
//               color: const Color.fromARGB(255, 84, 44, 179),
//             ),
//             SizedBox(
//               height: height * 0.02,
//             ),
//             customText(context: context, text: text, color: Colors.black),
//           ],
//         ),
//       ),
//     );
//   }
// }
