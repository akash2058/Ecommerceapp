// import 'dart:async';

// import 'package:ecommerceapp/provider/ecocontroller.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class SliderPage extends StatefulWidget {
//   const SliderPage({Key? key});

//   @override
//   State<SliderPage> createState() => _SliderPageState();
// }

// class _SliderPageState extends State<SliderPage> {
//   late PageController _pageController;
//   int _currentPage = 0;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//     startAutoPageChange();
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   void startAutoPageChange() {
//     Timer.periodic(const Duration(seconds: 3), (Timer timer) {
//       var state = Provider.of<Ecocontroller>(context, listen: false);
//       if (_currentPage < state.pics.length - 1) {
//         _currentPage++;
//       } else {
//         _currentPage = 0;
//       }
//       if (_pageController.hasClients) {
//         _pageController.animateToPage(
//           _currentPage,
//           duration: Duration(milliseconds: 500),
//           curve: Curves.easeInOut,
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<Ecocontroller>(
//       builder: (context, img, child) {
//         return SizedBox(
//           height: 250,
//           width: MediaQuery.of(context).size.width,
//           child: Stack(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: PageView.builder(
//                   controller: _pageController,
//                   itemCount: img.pics.length,
//                   itemBuilder: (context, index) {
//                     return SizedBox(
//                       width: MediaQuery.of(context).size.width,
//                       child: Container(
//                         width: MediaQuery.of(context).size.width,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage(img.pics[index]),
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                   onPageChanged: (index) {
//                     setState(() {
//                       _currentPage = index;
//                     });
//                   },
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List.generate(
//                     img.pics.length,
//                     (index) => Container(
//                       height: 9,
//                       width: 9,
//                       margin: EdgeInsets.symmetric(horizontal: 4),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: _currentPage == index ? Colors.red : Colors.grey,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
