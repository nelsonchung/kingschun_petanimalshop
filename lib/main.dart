import 'package:flutter/material.dart';
import 'main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favourite Pet App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // 左上角圖片
            Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                'assets/main_left_top_corner.png',
                //width: 80, // 這裡可以調整寬度
                //height: 80, // 這裡可以調整高度
              ),
            ),
            // 中間的 logo
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/main_logo.png',
                    width: 310, // 這裡可以調整寬度
                    height: 310, // 這裡可以調整高度
                  ),
                  SizedBox(height: 12),
                  // Logo 下方的文字圖片
                  Image.asset(
                    'assets/main_find_your_favourite_pet.png',
                    width: 200, // 這裡可以調整寬度
                  ),
                ],
              ),
            ),
            // Lorem ipsum 文字描述
            Positioned(
              left: 20,
              right: 20,
              bottom: 100,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam nunc et tincidunt ut. Vestibulum felis",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            // 右下角圖片（加入了手勢偵測）
            Positioned(
              right: 20,
              bottom: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
                child: Image.asset('assets/main_next_page.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
