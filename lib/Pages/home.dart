import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: unused_import
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Models/models.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Color containerColor = Color(0xFF26917F);
  final controller = PageController();
  var qno = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
          controller: controller,
            itemCount: ans.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              // return Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     IconButton(
              //       onPressed: () {
              //         controller.jumpToPage(index + 1);
              //         // setState(() {});
              //       },
              //       icon: Icon(Icons.add),
              //     ),
              //     Text(ans[index].qNo),
              //     Text(ans[index].question),
              //     Text(ans[index].answer),
              //     IconButton(
              //       onPressed: () {
              //         controller.jumpToPage(index - 1);
              //         // setState(() {});
              //       },
              //       icon: Icon(Icons.remove),
              //     ),
              //   ],
              // );

              return Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/textureBg.png'),
                        fit: BoxFit.cover)),
                child: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // BACK BUTTON
                            InkWell(

                      onTap: () {
                          controller.jumpToPage(index - 1);

                          },

                              child: Container(
                                height: 50,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple.shade300.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Container(
                                    alignment: Alignment(0, 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.keyboard_backspace_sharp,
                                          size: 30,
                                          color: Colors.deepPurple,
                                        ),
                                        Text(
                                          'Back',
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )),
                              ),
                            ),

                            // HINT BUTTON
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset('assets/images/hint.png'),
                                ],
                              ),
                            ),

                            // NEXT BUTTON
                            InkWell(
                              onTap: (){

                                controller.jumpToPage(index + 1);


                              },
                              child: Container(
                                height: 50,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Container(
                                    alignment: Alignment(0, 0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          'Skip',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.skip_next,
                                          size: 30,
                                          color: Colors.white,
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // TAP BUTTON Container Here................
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              children: [
                                Text(
                                  ans[index].qNo,
                                  style: TextStyle(fontSize: 25, color: Colors.white),
                                ),
                                SizedBox(height: 40),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black.withOpacity(0.2)),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      ans[index].question,
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),

                                // Answer Box
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                    height: 30,
                                    child: GridView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 9,
                                        gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 1,
                                            crossAxisSpacing: 8,
                                            mainAxisSpacing: 8),
                                        itemBuilder: (context, index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5)),
                                          );
                                        }),
                                  ),
                                ),

                                SizedBox(height: 10),

                                // Answer Hint Box
                                Container(
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 12,
                                          mainAxisSpacing: 12),
                                      itemCount: 9,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          alignment: Alignment.center,
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.deepPurple,
                                                  offset: const Offset(
                                                    5.0,
                                                    5.0,
                                                  ),
                                                  blurRadius: 5.0,
                                                  spreadRadius: 2.0,
                                                ),

                                                //BoxShadow
                                                //BoxShadow
                                              ],
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(20)),
                                          child: Text(
                                            'A',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 50,
                                                color: Colors.deepPurple),
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );

            }));
  }

  // Container buildContainer() {
  //   return Container(
  //     alignment: Alignment.topLeft,
  //     decoration: BoxDecoration(
  //         image: DecorationImage(
  //             image: AssetImage('assets/images/textureBg.png'),
  //             fit: BoxFit.cover)),
  //     child: SafeArea(
  //       child: Column(
  //         children: [
  //           Padding(
  //             padding: const EdgeInsets.only(top: 20),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceAround,
  //               children: [
  //                 // BACK BUTTON
  //                 Container(
  //                   height: 50,
  //                   width: 110,
  //                   decoration: BoxDecoration(
  //                       color: Colors.deepPurple.shade300.withOpacity(0.5),
  //                       borderRadius: BorderRadius.circular(30)),
  //                   child: Container(
  //                       alignment: Alignment(0, 0),
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                         children: [
  //                           Icon(
  //                             Icons.keyboard_backspace_sharp,
  //                             size: 30,
  //                             color: Colors.deepPurple,
  //                           ),
  //                           Text(
  //                             'Back',
  //                             style: TextStyle(
  //                                 color: Colors.deepPurple,
  //                                 fontSize: 20,
  //                                 fontWeight: FontWeight.bold),
  //                           ),
  //                         ],
  //                       )),
  //                 ),
  //
  //                 // HINT BUTTON
  //                 Container(
  //                   height: 50,
  //                   decoration: BoxDecoration(
  //                       color: Colors.white,
  //                       borderRadius: BorderRadius.circular(50)),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                     children: [
  //                       Image.asset('assets/images/hint.png'),
  //                     ],
  //                   ),
  //                 ),
  //
  //                 // NEXT BUTTON
  //                 Container(
  //                   height: 50,
  //                   width: 110,
  //                   decoration: BoxDecoration(
  //                       color: Colors.deepPurple,
  //                       borderRadius: BorderRadius.circular(30)),
  //                   child: Container(
  //                       alignment: Alignment(0, 0),
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                         children: [
  //                           Text(
  //                             'Skip',
  //                             style: TextStyle(
  //                                 color: Colors.white,
  //                                 fontSize: 20,
  //                                 fontWeight: FontWeight.bold),
  //                           ),
  //                           Icon(
  //                             Icons.skip_next,
  //                             size: 30,
  //                             color: Colors.white,
  //                           )
  //                         ],
  //                       )),
  //                 ),
  //               ],
  //             ),
  //           ),
  //
  //           // TAP BUTTON Container Here................
  //           Expanded(
  //             child: Padding(
  //               padding: const EdgeInsets.all(15.0),
  //               child: Container(
  //                 alignment: Alignment.bottomCenter,
  //                 child: Column(
  //                   children: [
  //                     Text(
  //                       'Question 1',
  //                       style: TextStyle(fontSize: 25, color: Colors.white),
  //                     ),
  //                     SizedBox(height: 40),
  //                     Container(
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(20),
  //                           color: Colors.black.withOpacity(0.2)),
  //                       alignment: Alignment.center,
  //                       width: double.infinity,
  //                       child: Padding(
  //                         padding: const EdgeInsets.all(15.0),
  //                         child: Text(
  //                           'Who is the Father of C Programming ?',
  //                           style: TextStyle(color: Colors.white, fontSize: 20),
  //                         ),
  //                       ),
  //                     ),
  //                     SizedBox(height: 10),
  //
  //                     // Answer Box
  //                     Padding(
  //                       padding: const EdgeInsets.all(15.0),
  //                       child: Container(
  //                         height: 30,
  //                         child: GridView.builder(
  //                             scrollDirection: Axis.horizontal,
  //                             itemCount: 9,
  //                             gridDelegate:
  //                                 SliverGridDelegateWithFixedCrossAxisCount(
  //                                     crossAxisCount: 1,
  //                                     crossAxisSpacing: 8,
  //                                     mainAxisSpacing: 8),
  //                             itemBuilder: (context, index) {
  //                               return Container(
  //                                 decoration: BoxDecoration(
  //                                     color: Colors.white,
  //                                     borderRadius: BorderRadius.circular(5)),
  //                               );
  //                             }),
  //                       ),
  //                     ),
  //
  //                     SizedBox(height: 10),
  //
  //                     // Answer Hint Box
  //                     Container(
  //                       child: GridView.builder(
  //                           shrinkWrap: true,
  //                           gridDelegate:
  //                               SliverGridDelegateWithFixedCrossAxisCount(
  //                                   crossAxisCount: 3,
  //                                   crossAxisSpacing: 12,
  //                                   mainAxisSpacing: 12),
  //                           itemCount: 9,
  //                           itemBuilder: (context, index) {
  //                             return Container(
  //                               alignment: Alignment.center,
  //                               height: 50,
  //                               width: 50,
  //                               decoration: BoxDecoration(
  //                                   boxShadow: [
  //                                     BoxShadow(
  //                                       color: Colors.deepPurple,
  //                                       offset: const Offset(
  //                                         5.0,
  //                                         5.0,
  //                                       ),
  //                                       blurRadius: 5.0,
  //                                       spreadRadius: 2.0,
  //                                     ),
  //
  //                                     //BoxShadow
  //                                     //BoxShadow
  //                                   ],
  //                                   color: Colors.white,
  //                                   borderRadius: BorderRadius.circular(20)),
  //                               child: Text(
  //                                 'A',
  //                                 style: TextStyle(
  //                                     fontWeight: FontWeight.bold,
  //                                     fontSize: 50,
  //                                     color: Colors.deepPurple),
  //                               ),
  //                             );
  //                           }),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
