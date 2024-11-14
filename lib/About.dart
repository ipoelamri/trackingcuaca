import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'About',
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
        ),
        body: Container(
          color: Color(0xff122D4F),
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'ABOUT APLICATION',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFFF9F7E4)),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Aplikasi ini dibuat untuk kebutuhan tugas projek dari mata kuliah MOBILE PROGRAMING',
                  style: TextStyle(color: Color(0xFFF9F7E4)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F7E4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Aplikasi ini dibuat oleh:',
                          style: TextStyle(
                              color: Color(0xff122d4f),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.person,
                                color: Color(0xff122d4f), size: 22),
                            SizedBox(width: 10),
                            Text(
                              'Muhammad Saiful Amri',
                              style: TextStyle(
                                  color: Color(0xff122d4f),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.school,
                                color: Color(0xff122d4f), size: 22),
                            SizedBox(width: 10),
                            Text(
                              'NIM 221091750032',
                              style: TextStyle(
                                  color: Color(0xff122d4f),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.business,
                                color: Color(0xff122d4f), size: 22),
                            SizedBox(width: 10),
                            Text(
                              'SISTEM INFORMASI',
                              style: TextStyle(
                                  color: Color(0xff122d4f),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.home_work_rounded,
                                color: Color(0xff122d4f), size: 22),
                            SizedBox(width: 10),
                            Text(
                              'UNIVERSITAS PAMULANG SERANG',
                              style: TextStyle(
                                  color: Color(0xff122d4f),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
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
