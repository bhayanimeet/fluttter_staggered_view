import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Gujarat extends StatefulWidget {
  const Gujarat({Key? key}) : super(key: key);

  @override
  State<Gujarat> createState() => _GujaratState();
}

class _GujaratState extends State<Gujarat> {
  int currentPage = 0;

  List myList = [
    'https://www.holidify.com/images/bgImages/SOMNATH.jpg',
    'https://tse3.mm.bing.net/th?id=OIP._iqQLTmUX6TTF7uGpqp-wQHaFB&pid=Api&P=0',
    'https://static.toiimg.com/thumb/msid-46918916,width=1200,height=900/46918916.jpg',
    'https://tse1.mm.bing.net/th?id=OIP.Io_HhE6oYKuJ7Y5_RAu4MwHaEJ&pid=Api&P=0',
    'https://tse4.mm.bing.net/th?id=OIP.6hmZnYnlW5HjH3-WZ2RneQHaFk&pid=Api&P=0',
  ];

  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gujarat"),
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
