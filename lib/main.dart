import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Kawah Ijen merupakan destinasi wisata di Indonesia yang sudah terkenal hingga ke mancanegara '
        'Kawah Ijen terletak di Kabupaten Banyuwangi, Jawa Timur '
        'Kawah Ijen berada di kompleks Gunung Ijen yang mempunyai ketinggian 2.386 meter di atas permukaan laut. '
        'Dengan lokasi yang cukup tinggi, suhu udara mencapai 13 derajat celcius. '
        'Bahkan pada musim-musim tertentu, suhunya bisa mencapai 0 derajat celcius. '
        'Di Kawah ijen menawarkan keindahan yang tiada tara'
        'Nama: Arlafelda Meindra Widayat'
        'NIM: 362358302169',
        softWrap: true, 
      ),
    );

    
    Widget titlesection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Osechine Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter Layout Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Arlafelda Meindra Widayat | 362358302169"),
        ),
        body: ListView(
          children: [
            Image.asset(
              '25.jpg', 
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            titlesection,
            buttonSection,
            textSection, 
          ],
        ),
      ),
    );
  }

  
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
