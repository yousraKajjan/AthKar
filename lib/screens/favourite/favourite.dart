import 'package:flutter/material.dart';

class FavouriteMusicScreen extends StatelessWidget {
  const FavouriteMusicScreen({super.key});

  // final music? mu;

  // const FavouriteMusicScreen({super.key, this.mu});

  @override
  Widget build(BuildContext context) {
    // استخدم music هنا لعرض بيانات المفضلة

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('مفضلتي❤'),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/favorite.jpg',

              // width: 250,
              // height: 250,
            ),
            const Text('Nothing here... yet',
                style: TextStyle(fontSize: 20, fontFamily: 'Poppins')),
            const SizedBox(
              height: 10,
            ),
            const Text('Try adding to your favorite',
                style: TextStyle(fontSize: 20, fontFamily: 'Poppins')),
          ],
        ),
      ),
    );
  }
}
