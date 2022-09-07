import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:practice5/Second_page.dart';
import 'package:practice5/shesshh.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // const HomePage({Key? key}) : super(key: key);
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 33, 81),
      body: SafeArea(
          child: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'Hello,',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '\nRey Alcala?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage()),
                            );
                          },
                          child: Ink.image(
                            image: const AssetImage('lib/Image/profile.jpg'),
                            // fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: new InputDecoration(
                      icon: new Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'Search',
                      focusColor: Colors.white,
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 250,
                  width: 300,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    children: const [
                      MyCards(
                          tittle: 'Design',
                          subtittle: '5 tasks',
                          color: Colors.red),
                      MyCards(
                          tittle: 'Learnings',
                          subtittle: '3 tasks',
                          color: Colors.blue),
                      MyCards(
                          tittle: 'Meeting',
                          subtittle: '7 tasks',
                          color: Colors.yellow),
                      MyCards(
                          tittle: 'Jego Shit',
                          subtittle: '3 tasks',
                          color: Colors.pink),
                    ],
                  ),
                ),
                // SmoothPageIndicator(controller: controller, count:count),
                const SizedBox(
                  height: 10,
                ),
                // SmoothPageIndicator(controller: _controller, count: 4)
                SmoothPageIndicator(
                    controller: _controller, // PageController
                    count: 4,
                    effect: WormEffect(), // your preferred effect
                    onDotClicked: (index) {})
              ],
            ),
            const SizedBox(
              height: 40            ),
            // this is shit!
            Container(
              width: 340,
              height: 410,
              padding:const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Todays task',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(children: [
                    InkWell(
                      child: Container(
                        height: 70,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          children: [
                            // Icon(Icons.draw_outlined)
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {}, // Image tapped
                              child: Image.asset(
                                'lib/Image/sketch.png',
                                fit: BoxFit.cover, // Fixes border issues
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Column(
                              children: const [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '   Sketching',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '     2 Completed',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 90,
                                    ),
                                    Image.asset(
                                      'lib/Image/4.jpg',
                                      width: 20,
                                      height: 20,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        print("Tapped on container");
                      },
                    ),
                  const  SizedBox(height: 15),
                    InkWell(
                      child: Container(
                        height: 70,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          children: [
                            // Icon(Icons.draw_outlined)
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {}, // Image tapped
                              child: Image.asset(
                                'lib/Image/wireframe.png',
                                fit: BoxFit.cover, // Fixes border issues
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Column(
                              children: const [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '   Wireframing',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '     0 Completed',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    Image.asset(
                                      'lib/Image/4.jpg',
                                      width: 20,
                                      height: 20,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        print("Tapped on container");
                      },
                    ),













                    const  SizedBox(height: 15),
                    InkWell(
                      child: Container(
                        height: 70,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Row(
                          children: [
                            // Icon(Icons.draw_outlined)
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {}, // Image tapped
                              child: Image.asset(
                                'lib/Image/visual.png',
                                fit: BoxFit.cover, // Fixes border issues
                                width: 50,
                                height: 50,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Column(
                              children: const [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '   Visual Design',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '     2 Completed',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 55,
                                    ),
                                    Image.asset(
                                      'lib/Image/4.jpg',
                                      width: 20,
                                      height: 20,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        print("Tapped on container");
                      },
                    ),
                  ]),
                  const SizedBox(height: 15,),
                 Row(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: [
                     FloatingActionButton(
                    backgroundColor:const Color.fromARGB(255, 131, 1, 92),
                    foregroundColor: Colors.white,
                    onPressed: () {
                      // Respond to button press
                    },
                    child:  const Icon(Icons.add),
                  )
                  ],
                 )
                ],
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon (Icons.home, size: 30, color: Colors.white),
          Icon(Icons.contact_phone, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
        ],
        color: Colors.blue,
        buttonBackgroundColor: Color.fromARGB(255, 138, 132, 123),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 200),
        onTap: (index) {
          _page = index;
        },
      ),
   
        
    );
  }
}
