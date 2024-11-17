import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaSocial extends StatelessWidget {
  const MediaSocial({super.key});

  Future<void> LauncherURL(Uri uri) async {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Tidak dapat membuka URL: ${uri.toString()}';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Media Social',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff122D4F)),
          ),
          backgroundColor: const Color(0xFFF9F7E4),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          iconTheme: IconThemeData(color: Color(0xff122D4F)),
        ),
        body: Container(
          color: Color(0xff122D4F),
          padding: EdgeInsets.fromLTRB(0, screenHeight * 0.04, 0, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'SOSIAL MEDIA DAN CONTACT',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.04,
                        color: Color(0xFFF9F7E4)),
                  ),
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        screenWidth * 0.05,
                        screenHeight * 0.06,
                        screenWidth * 0.05,
                        screenHeight * 0.05),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF9F7E4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(children: [
                      Text(
                        'Hubungi Saya',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.04,
                            color: Color(0xff122d4f)),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      GestureDetector(
                        onTap: () {
                          LauncherURL(Uri.parse(
                              'https://api.whatsapp.com/send/?phone=6288224664299&text&type=phone_number&app_absent=0'));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.01,
                              horizontal: screenWidth * 0.05),
                          decoration: BoxDecoration(
                            color: Color(0xff122d4f),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/asset/images/whatsapp.png',
                                  width: screenWidth * 0.08,
                                  height: screenHeight * 0.08,
                                ),
                                SizedBox(width: screenWidth * 0.02),
                                Text(
                                  'WHATSAPP',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.03,
                                      color: Color(0xffF9F7E4)),
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      GestureDetector(
                        onTap: () {
                          LauncherURL(
                              Uri.parse('https://instagram.com/ipoel_amri12'));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.01,
                              horizontal: screenWidth * 0.05),
                          decoration: BoxDecoration(
                            color: Color(0xff122d4f),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/asset/images/instagram.png',
                                  width: screenWidth * 0.08,
                                  height: screenHeight * 0.08,
                                ),
                                SizedBox(width: screenWidth * 0.02),
                                Text(
                                  'INSTAGRAM',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.03,
                                      color: Color(0xffF9F7E4)),
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      GestureDetector(
                        onTap: () {
                          LauncherURL(
                              Uri.parse('mailto:ipeolamri94@gmail.com'));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.01,
                              horizontal: screenWidth * 0.05),
                          decoration: BoxDecoration(
                            color: Color(0xff122d4f),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/asset/images/gmail.png',
                                  width: screenWidth * 0.08,
                                  height: screenHeight * 0.08,
                                ),
                                SizedBox(width: screenWidth * 0.02),
                                Text(
                                  'GMAIL',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.03,
                                      color: Color(0xffF9F7E4)),
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      GestureDetector(
                        onTap: () {
                          LauncherURL(
                              Uri.parse('https://github.com/ipoelamri'));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.01,
                              horizontal: screenWidth * 0.05),
                          decoration: BoxDecoration(
                            color: Color(0xff122d4f),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/asset/images/github-logo.png',
                                  width: screenWidth * 0.08,
                                  height: screenHeight * 0.08,
                                ),
                                SizedBox(width: screenWidth * 0.02),
                                Text(
                                  'GITHUB',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: screenWidth * 0.03,
                                      color: Color(0xffF9F7E4)),
                                ),
                              ]),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class MediaSocial extends StatelessWidget {
//   const MediaSocial({super.key});

//   // Fungsi untuk membuka URL
//   Future<void> _launchURL(Uri uri) async {
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri); // Menggunakan launchUrl dengan Uri
//     } else {
//       throw 'Tidak dapat membuka URL: ${uri.toString()}';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Media Sosial'),
//         backgroundColor: const Color(0xff122d4f),
//         iconTheme: const IconThemeData(color: Color(0xFFF9F7E4)),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: const Color(0xFFF9F7E4),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 'Ikuti Kami di Media Sosial',
//                 style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xff122d4f)),
//                 textAlign: TextAlign.center,
//               ),
//               const SizedBox(height: 40),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   IconButton(
//                     icon:
//                         const Icon(Icons.phone, size: 40, color: Colors.green),
//                     onPressed: () {
//                       _launchURL(Uri.parse(
//                           'https://api.whatsapp.com/send/?phone=6288224664299&text&type=phone_number&app_absent=0'));
//                     },
//                   ),
//                   const SizedBox(width: 20),
//                   IconButton(
//                     icon: const Icon(size: 40, color: Colors.pink),
//                     onPressed: () {
//                       _launchURL(
//                           Uri.parse('https://www.instagram.com/ipoel_amri12'));
//                     },
//                   ),
//                   const SizedBox(width: 20),
//                   IconButton(
//                     icon: const Icon(Icons.email, size: 40, color: Colors.blue),
//                     onPressed: () {
//                       _launchURL(Uri.parse('mailto:ipeolamri94@gmail.com'));
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
