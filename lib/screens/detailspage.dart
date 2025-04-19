// detailspage.dart
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const DetailsPage({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  child: Hero(
                    tag: imageUrl,
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      imageBuilder:
                          (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                      placeholder:
                          (context, url) => SizedBox(
                            child: Image.asset(
                              'assets/icons/png/placeholder.png',
                            ),
                          ),
                      errorWidget:
                          (context, url, error) => Image.asset(
                            'assets/icons/png/placeholder.png',
                            fit: BoxFit.cover,
                            height: 90,
                          ),
                      fit: BoxFit.cover,
                      height: 300,
                      width: double.infinity,
                    ),
                  ),
                ),

                // Image.asset(
                //   imageUrl,
                //   width: double.infinity,
                //   height: 300,
                //   fit: BoxFit.cover,
                // ),
                Positioned(
                  top: 30,
                  right: 5,

                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back, size: 30, color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 280,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Color(0xFF5A5A5A),
                                fontSize: 22,
                                fontFamily: 'Somar',
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              description,
                              style: TextStyle(
                                color: Color(0xFF5A5A5A),
                                fontSize: 18,
                                fontFamily: 'Somar',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:cached_network_image/cached_network_image.dart';

// class DetailsPage extends StatelessWidget {
//   final String title;
//   final String description;
//   final String imageUrl;

//   const DetailsPage({
//     super.key,
//     required this.title,
//     required this.description,
//     required this.imageUrl,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           // صورة الغلاف بالأعلى
//           CachedNetworkImage(
//             imageUrl: imageUrl,
//             placeholder: (context, url) =>
//                 Image.asset('assets/icons/png/placeholder.png'),
//             errorWidget: (context, url, error) =>
//                 Image.asset('assets/icons/png/placeholder.png'),
//             fit: BoxFit.cover,
//             height: 400,
//             width: double.infinity,
//           ),

//           // زر الرجوع
//           Positioned(
//             top: 40,
//             left: 16,
//             child: CircleAvatar(
//               backgroundColor: Colors.black.withOpacity(0.4),
//               child: IconButton(
//                 icon: Icon(Icons.arrow_back, color: Colors.white),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ),
//           ),

//           // المحتوى الأبيض المنسدل
//           Positioned(
//             top: 350,
//             left: 0,
//             right: 0,
//             bottom: 0,
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(24),
//                   topRight: Radius.circular(24),
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 10,
//                     offset: Offset(0, -4),
//                   )
//                 ],
//               ),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // العنوان
//                     Text(
//                       title,
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF2D2D2D),
//                         fontFamily: 'Somar',
//                       ),
//                     ),
//                     SizedBox(height: 12),

//                     // الوصف
//                     Text(
//                       description,
//                       style: TextStyle(
//                         fontSize: 18,
//                         height: 1.5,
//                         color: Color(0xFF5A5A5A),
//                         fontFamily: 'Somar',
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
