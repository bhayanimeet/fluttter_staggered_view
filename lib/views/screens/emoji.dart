import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  const Emoji({Key? key}) : super(key: key);

  @override
  State<Emoji> createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  int currentPage = 0;

  List myList = [
    'https://is4-ssl.mzstatic.com/image/thumb/Purple7/v4/88/33/d5/8833d52e-d121-74a8-f039-fab272f7815b/source/1280x1280bb.jpg',
    'https://tse4.mm.bing.net/th?id=OIP.4qGwJbHtoyUV5ZKLNvqoYgHaEo&pid=Api&P=0',
    'https://amaghanaonline.com/wp-content/uploads/2021/07/emojis-cropped.jpg',
    'https://getwallpapers.com/wallpaper/full/d/b/2/866898-free-emojis-wallpapers-1920x1200-htc.jpg',
    'https://tse2.mm.bing.net/th?id=OIP.la06SptvmxZAdIbQhLHaSAAAAA&pid=Api&P=0',
  ];

  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emojis"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                initialPage: currentPage,
                onPageChanged: (val, _) {
                  setState(() {
                    currentPage = val;
                  });
                },
                enlargeCenterPage: true,
                height: 300,
              ),
              items: myList
                  .map((e) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.network(e, fit: BoxFit.fill),
              ))
                  .toList(),
            ),
            const SizedBox(height: 40),
            Container(
              width: 130,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: myList.map(
                      (e) {
                    int i = myList.indexOf(e);
                    return GestureDetector(
                      onTap: () {
                        carouselController.animateToPage(
                          i,
                          curve: Curves.easeInOut,
                          duration: const Duration(seconds: 1000),
                        );
                      },
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: (i == currentPage)
                            ? Colors.grey.shade600
                            : Colors.grey.shade300,
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
