import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Wonder extends StatefulWidget {
  const Wonder({Key? key}) : super(key: key);

  @override
  State<Wonder> createState() => _WonderState();
}

class _WonderState extends State<Wonder> {
  int currentPage = 0;

  List myList = [
    'https://pixfeeds.com/images/topic/4400/1200-4400-seven-wonders-of-the-world-photo1.jpg',
    'https://s1.it.atcdn.net/wp-content/uploads/2014/09/Chichen-Itza-1-of-32.jpg',
    'https://tse4.mm.bing.net/th?id=OIP.uFEcW-KOPCczGYlvm1aRngHaE8&pid=Api&P=0',
    'https://tse1.mm.bing.net/th?id=OIP.BrKujUKqMLiujla2zr0S9QHaE6&pid=Api&P=0',
    'https://tse2.mm.bing.net/th?id=OIP.kqj97k4nSYxid6qEl-zmvQHaE8&pid=Api&P=0',
    'https://tse1.mm.bing.net/th?id=OIP.x4rCiF9br7frWRBTvL44VAHaFC&pid=Api&P=0',
    'https://cdn.amomama.com/43aa2c1fc4312293bad5fef5d1597715.jpg',
  ];

  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("7 Wonders"),
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
              width: 150,
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
