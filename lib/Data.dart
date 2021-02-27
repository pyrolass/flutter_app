import 'package:flutter/cupertino.dart';

class Data {
  final int id;
  final String name;
  final String phoneNum;
  final String job;
  final String profileImg;
  final List<String> workImg;
  final String mapImg;
  final double rating;

  const Data({
    @required this.id,
    @required this.name,
    @required this.job,
    @required this.phoneNum,
    @required this.profileImg,
    @required this.mapImg,
    @required this.workImg,
    @required this.rating,
  });
}

const users = [
  Data(
    id: 1,
    name: 'Las Zozk',
    phoneNum: '0750123456',
    job: 'Engineer',
    profileImg: 'assets/images/image1.jpg',
    mapImg: 'assets/images/map.png',
    workImg: [
      'assets/images/image1.jpg',
      'assets/images/image1.jpg',
      'assets/images/image1.jpg',
      'assets/images/image1.jpg',
    ],
    rating: 3,
  ),
  Data(
    id: 2,
    name: 'Ahmed Rasul',
    phoneNum: '0751123456',
    job: 'Manager',
    profileImg: 'assets/images/image2.jpeg',
    mapImg: 'assets/images/map.png',
    workImg: [
      'assets/images/image2.jpeg',
      'assets/images/image2.jpeg',
      'assets/images/image2.jpeg',
      'assets/images/image2.jpeg',
    ],
    rating: 2,
  ),
  Data(
    id: 3,
    name: 'Osman Khafur',
    phoneNum: '0770123456',
    job: 'Wastay Labgh',
    profileImg: 'assets/images/image3.jpeg',
    mapImg: 'assets/images/map.png',
    workImg: [
      'assets/images/image3.jpeg',
      'assets/images/image3.jpeg',
      'assets/images/image3.jpeg',
      'assets/images/image3.jpeg',
    ],
    rating: 4,
  ),
  Data(
    id: 4,
    name: 'Kawa Muhammed',
    phoneNum: '0771123456',
    job: 'Shop Keeper',
    profileImg: 'assets/images/image4.jpg',
    mapImg: 'assets/images/map.png',
    workImg: [
      'assets/images/image4.jpg',
      'assets/images/image4.jpg',
      'assets/images/image4.jpg',
      'assets/images/image4.jpg',
    ],
    rating: 3,
  ),
];
