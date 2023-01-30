import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Heritage extends StatefulWidget {
  const Heritage({Key? key}) : super(key: key);

  @override
  State<Heritage> createState() => _HeritageState();
}

class _HeritageState extends State<Heritage> {
  int currentPage = 0;

  List myList = [
    'https://tse1.mm.bing.net/th?id=OIP.ehyY9xFq27PnAyVF6TkDcwHaEo&pid=Api&P=0',
    'https://static.toiimg.com/photo/61573014/.jpg',
    'https://dayoutinengland.com/wp-content/uploads/2020/04/Stonehenge.jpg',
    'https://cdn.travelversed.co/travelversed/wp-content/uploads/2018/07/feature_unesco.jpg',
    'https://tse1.mm.bing.net/th?id=OIP.kvT7T2VrtvafeoASQXH43QHaE8&pid=Api&P=0',
  ];

  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Heritage places"),
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
                height: 250,
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
