import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gallery_view/views/screens/animal.dart';
import 'package:gallery_view/views/screens/birds.dart';
import 'package:gallery_view/views/screens/cricket.dart';
import 'package:gallery_view/views/screens/emoji.dart';
import 'package:gallery_view/views/screens/guajrat.dart';
import 'package:gallery_view/views/screens/heritage.dart';
import 'package:gallery_view/views/screens/mobile.dart';
import 'package:gallery_view/views/screens/nature.dart';
import 'package:gallery_view/views/screens/stadium.dart';
import 'package:gallery_view/views/screens/wonder.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'cricket': (context) => const Cricket(),
        'gujarat': (context) => const Gujarat(),
        'nature': (context) => const Nature(),
        'heritage': (context) => const Heritage(),
        'bird': (context) => const Birds(),
        'animal': (context) => const Animal(),
        'stadium': (context) => const Stadium(),
        'mobile': (context) => const Mobile(),
        'emoji': (context) => const Emoji(),
        'wonder': (context) => const Wonder(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered View"),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade400,
      body: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'cricket');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 9,
                              child: Container(
                                color: Colors.blue,
                                child: Image.network(
                                  'https://tse4.mm.bing.net/th?id=OIP.mwjZLyhKmIy7QgquClCf0gHaJQ&pid=Api&P=0',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 7),
                            const Expanded(
                              flex: 1,
                              child: Text(
                                "Cricketers",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.5,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'gujarat');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.blue,
                            child: Image.network(
                              'https://media.istockphoto.com/vectors/illustration-of-india-state-gujarat-map-background-vector-id697819364?k=6&m=697819364&s=612x612&w=0&h=JcJ3Ub_3yPrVphRRdgJ7v7KVB6RpmDgXhAm3AX0KoMg=',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Expanded(
                          flex: 1,
                          child: Text(
                            "Gujarat",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'heritage');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 13,
                          child: Container(
                            color: Colors.blue,
                            child: Image.network(
                              'https://www.oyorooms.com/blog/wp-content/uploads/2017/10/Feature-Image-min-16-1080x720.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Expanded(
                          flex: 2,
                          child: Text(
                            "Heritage places",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'nature');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.blue,
                            child: Image.network(
                              'https://tse2.mm.bing.net/th?id=OIP.TQSxaEcMizUChr5Gz1dbYgHaFj&pid=Api&P=0',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Expanded(
                          flex: 1,
                          child: Text(
                            "Nature view",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'animal');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.blue,
                            child: Image.network(
                              'https://tse2.mm.bing.net/th?id=OIP.0ycBiYhRk2OO3Npa09mzpAHaKa&pid=Api&P=0',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Expanded(
                          flex: 1,
                          child: Text(
                            "Animal",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'bird');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.blue,
                            child: Image.network(
                              'https://tse4.mm.bing.net/th?id=OIP.RoowTwL45xIaKRgH1swHxgHaHa&pid=Api&P=0',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Expanded(
                          flex: 1,
                          child: Text(
                            "Birds",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.2,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'mobile');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.blue,
                            child: Image.network(
                              'https://www.bhphotovideo.com/images/images2500x2500/samsung_sm_g998uzsaxaa_s21_ultra_128gb_5g_1614299.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Expanded(
                          flex: 1,
                          child: Text(
                            "Mobiles",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.3,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'stadium');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.blue,
                            child: Image.network(
                              'https://www.architectandinteriorsindia.com/public/styles/full_img/public/images/2020/02/26/DJI_0035-copy-(003).gif?itok=7BqmzJcz',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Expanded(
                          flex: 1,
                          child: Text(
                            "Cricket stadium",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2.5,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'wonder');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 9,
                          child: Container(
                            color: Colors.blue,
                            child: Image.network(
                              'https://2.bp.blogspot.com/-ZuyhVmQvAX0/WIL_IrlCx_I/AAAAAAAAAQg/fhxig5s-tH48UAixpdOfg5g88zeHFPsAgCLcB/s1600/Seven%2BWonders.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 7),
                        const Expanded(
                          flex: 1,
                          child: Text(
                            "7 wonders",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'emoji');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                            child: Image.network(
                              'https://tse4.mm.bing.net/th?id=OIP.YixRqplG4fcn38cSVXCqGQHaFj&pid=Api&P=0',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Emojis",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
