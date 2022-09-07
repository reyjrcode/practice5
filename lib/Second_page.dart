import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 7, 33, 81),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Second Page Shit!'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          clipBehavior: Clip.hardEdge,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(8),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // Text('This is Second Page!!!!',style: TextStyle(fontSize: 50,
              // fontWeight: FontWeight.bold),)
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 340,
                  height: 800,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Column(
                    children: [
                      Container(
                        width: 250,
                        height: 90,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 7, 33, 81),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('You are on track!',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text('      50% progress have made!',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.red,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: const Image(
                                    width: 50,
                                    height: 50,
                                    image: AssetImage('lib/Image/design.png'),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Design',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '75% Completed!',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children:   [
                                Container(
                                  width:30,
                                  height:30,
                               
                          child: Column(children: [
                            Icon(Icons.check_box)
                          ],),
                                ),
                                
                              ],
                            ),
    //                  
                           ],    
                        ),
                      ),
                      onTap: () {
                        print("Tapped on container");
                      },
                    ),
                 const SizedBox(height: 15,),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.yellow,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: const Image(
                                    width: 50,
                                    height: 50,
                                    image: AssetImage('lib/Image/meeting.png'),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Metting',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '80% Completed!',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children:   [
                                Container(
                                  width:30,
                                  height:30,
                               
                          child: Column(children: [
                            Icon(Icons.check_box)
                          ],),
                                ),
                                
                              ],
                            ),
    //                  
                           ],    
                        ),
                      ),
                      onTap: () {
                        print("Tapped on container");
                      },
                    ),

                     const SizedBox(height: 15,),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.blue,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: const Image(
                                    width: 50,
                                    height: 50,
                                    image: AssetImage('lib/Image/learning.png'),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Learning',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '33% Completed!',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                            Row(
                              children:   [
                                Container(
                                  width:30,
                                  height:30,
                               
                          child: Column(children: [
                            Icon(Icons.check_box)
                          ],),
                                ),
                                
                              ],
                            ),
    //                  
                           ],    
                        ),
                      ),
                      onTap: () {
                        print("Tapped on container");
                      },
                    ),
                   Container( 
                    child: Column(
                      children: [
                        Image.asset('lib/Image/july.jpg',
                      width: 340,
                      height: 340,)
                        
                      ],
                    ),
                    ),
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
              )
            ],
          ),
        )));
  }
}
