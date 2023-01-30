import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Nature extends StatefulWidget {
  const Nature({Key? key}) : super(key: key);

  @override
  State<Nature> createState() => _NatureState();
}

class _NatureState extends State<Nature> {
  int currentPage = 0;

  List myList = [
    'https://tse4.mm.bing.net/th?id=OIP.PYipJ_hSncugM2SwnZitvgHaEK&pid=Api&P=0',
    'https://wallpapercave.com/wp/wp2722928.jpg',
    'https://wallup.net/wp-content/uploads/2016/01/258626-nature-landscape-lake-reflection-mountain-clouds-forest-Italy-water-summer-trees-calm.jpg',
    'https://wallpapercave.com/wp/wp6405909.jpg',
    'https://tse2.mm.bing.net/th?id=OIP.xsT1VScJ1cc2ja70YQV-eAHaEo&pid=Api&P=0',
  ];

  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nature View"),
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
