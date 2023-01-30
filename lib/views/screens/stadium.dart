import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Stadium extends StatefulWidget {
  const Stadium({Key? key}) : super(key: key);

  @override
  State<Stadium> createState() => _StadiumState();
}

class _StadiumState extends State<Stadium> {
  int currentPage = 0;

  List myList = [
    'https://mysportstourist.com/wp-content/uploads/2020/01/MCG.jpg',
    'https://images.outlookindia.com/public/uploads/articles/2021/2/24/Motera-stadium_20200320_402_602b_570_850.jpg',
    'https://curlytales.com/wp-content/uploads/2020/09/f79e8089ced9d3e4912eb65b4c5c4259-1.jpg',
    'https://images.jdmagicbox.com/comp/hyderabad/j6/040pxx40.xx40.000811772043.l3j6/catalogue/rajiv-gandhi-international-cricket-stadium-uppal-hyderabad-stadiums-1cd3skc.png',
    'https://tse2.mm.bing.net/th?id=OIP.9AG7Nwt4yYXy3bjhGGjsLwHaEf&pid=Api&P=0',
  ];

  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cricket Stadium"),
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
