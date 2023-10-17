import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 搜索框
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.orange[50],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search, color: Colors.orange),
                      border: InputBorder.none,
                      hintText: 'Search',
                    ),
                  ),
                ),
                SizedBox(height: 32),
                // Categories
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "categories",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Image.asset('assets/mainpage_seeall.png', width: 60),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/mainpage_all_icon.png', width: 100),
                    Image.asset('assets/mainpage_cats_icon.png', width: 100),
                    Image.asset('assets/mainpage_dogs_icon.png', width: 100),
                  ],
                ),
                SizedBox(height: 40),
                // The Best Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "The Best Price",
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Image.asset('assets/mainpage_seeall.png', width: 60),
                  ],
                ),
                SizedBox(height: 20),
                AnimalCard(
                  assetBackground: 'assets/mainpage_bk_brown.png',
                  assetImage: 'assets/mainpage_cat_sample.png',
                  animalName: 'Cute Cat',
                  animalAge: 'Age | 1Y',
                  animalDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  animalPrice: 'Price: 30\$',
                ),
                SizedBox(height: 20),
                AnimalCard(
                  assetBackground: 'assets/mainpage_bk_yellow.png',
                  assetImage: 'assets/mainpage_dog_sample.png',
                  animalName: 'Cute Dog',
                  animalAge: 'Age | 1Y',
                  animalDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  animalPrice: 'Price: 30\$',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AnimalCard extends StatelessWidget {
  final String assetBackground;
  final String assetImage;
  final String animalName;
  final String animalAge;
  final String animalDescription;
  final String animalPrice;

  AnimalCard({
    required this.assetBackground,
    required this.assetImage,
    required this.animalName,
    required this.animalAge,
    required this.animalDescription,
    required this.animalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(assetBackground, fit: BoxFit.cover),
        Positioned(
          left: 16,
          top: 16,
          bottom: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(animalName, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                  SizedBox(width: 10),
                  Text(animalAge, style: TextStyle(fontSize: 12, color: Colors.white)),
                ],
              ),
              SizedBox(height: 10),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width - 220, // 220 is an estimated space for the image and some padding
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10), // 左側添加5像素的內間距
                  child: Text(animalDescription, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(animalPrice, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white))
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 16,
          top: 16,
          bottom: 16,
          child: Image.asset(assetImage, fit: BoxFit.cover),
        ),
      ],
    );
  }
}
