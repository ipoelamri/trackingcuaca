import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          iconTheme: const IconThemeData(color: Color(0xff122D4F)),
        ),
        body: Container(
          color: Color(0xff122D4F),
          padding: EdgeInsets.only(top: screenHeight * 0.03), // Padding dinamis
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'ABOUT APPLICATION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenHeight * 0.025, // Ukuran font dinamis
                      color: Color(0xFFF9F7E4),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  'Aplikasi ini dibuat untuk kebutuhan tugas projek dari mata kuliah MOBILE PROGRAMMING',
                  style: TextStyle(
                    color: Color(0xFFF9F7E4),
                    fontSize: screenHeight * 0.02, // Ukuran font dinamis
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: screenHeight * 0.05),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(screenWidth *
                        0.08), // Padding dinamis berdasarkan lebar layar
                    decoration: const BoxDecoration(
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
                            fontSize:
                                screenHeight * 0.025, // Ukuran font dinamis
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('lib/asset/images/fotokampus.jpeg'),
                          radius: screenWidth *
                              0.15, // Ukuran avatar dinamis berdasarkan lebar layar
                          backgroundColor: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff122d4f),
                                width: 4.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        _buildRowWithIcon(
                            Icons.person, 'MUHAMMAD SAIFUL AMRI', screenHeight),
                        SizedBox(height: screenHeight * 0.02),
                        _buildRowWithIcon(
                            Icons.school, 'NIM 221091750032', screenHeight),
                        SizedBox(height: screenHeight * 0.02),
                        _buildRowWithIcon(
                            Icons.business, 'SISTEM INFORMASI', screenHeight),
                        SizedBox(height: screenHeight * 0.02),
                        _buildRowWithIcon(Icons.home_work_rounded,
                            'UNIVERSITAS PAMULANG SERANG', screenHeight),
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

  // Fungsi helper untuk membuat baris dengan ikon dan teks
  Widget _buildRowWithIcon(IconData icon, String text, double screenHeight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon,
            color: Color(0xff122d4f),
            size: screenHeight * 0.03), // Ukuran ikon dinamis
        SizedBox(width: 10),
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xff122d4f),
              fontSize: screenHeight * 0.02, // Ukuran font dinamis
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
