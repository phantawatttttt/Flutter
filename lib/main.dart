import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), // ปรับขนาด font ของ app bar
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 90,
                  height: 90,
                  color: Colors.grey[300],
                  alignment: Alignment.center,
                  child: Image.network(
                    'https://www.w3schools.com/w3images/avatar2.png', // URL ที่ถูกต้อง
                  ),
                ),
              ),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Phantawat',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Manphansa',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Tonmai',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Hobby: listen music, playing games',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Food: Pizza, Yum',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Birthplace:Phitsanulok, Thailand',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Education:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Elementary: Saint Nicholas School   Year: 2009-2011',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Primary: Saint Nicholas School   Year: 2012-2014',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'High School: Saint Nicholas School  Year: 2015-2021',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Undergrad: Naresuan University   Year: 2021-2025',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}