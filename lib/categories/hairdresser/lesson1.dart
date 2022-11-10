import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class LessonOne extends StatefulWidget {
  const LessonOne({Key? key}) : super(key: key);

  @override
  State<LessonOne> createState() => _LessonOneState();
}

class _LessonOneState extends State<LessonOne> {
  late VideoPlayerController lessonOneController;
  final ScrollController verticalController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    lessonOneController = VideoPlayerController.asset(
      'assets/lesson_one.mp4',
    )..initialize().then((value) => lessonOneController.play());
    lessonOneController.setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 247, 242, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Color.fromRGBO(132, 109, 98, 1),
          ),
        ),
        title: Text(
          'Lesson 1',
          style: TextStyle(color: Color.fromRGBO(132, 109, 98, 1)),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                        height: 250, child: VideoPlayer(lessonOneController))),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: verticalController,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Lorem ipsum dolor',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Divider(
                              endIndent: 300,
                              color: Colors.black,
                              thickness: 2,
                              height: 40,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum porta, nisi ut consequat sagittis, erat risus ornare quam, sit amet finibus risus erat et nisl. Sed vel vestibulum sem. Etiam et lacus erat. Suspendisse nibh nulla, dictum non mi ac, dictum pulvinar nulla. Etiam malesuada urna vitae sem rutrum, ac euismod dolor eleifend. Suspendisse potenti. Duis gravida fermentum pulvinar. Proin eget risus eu tellus pellentesque congue et sit amet quam. Donec dapibus pulvinar augue sit amet posuere.',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 241, 241, 241),
                                              offset: Offset(-2, -2),
                                              blurRadius: 5,
                                              spreadRadius: 1),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 171, 171, 171),
                                              offset: Offset(2, 2),
                                              blurRadius: 5,
                                              spreadRadius: 1),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              child: Image(
                                                  image: AssetImage(
                                                      'assets/hairdresser.png'))),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Lesson 2',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromRGBO(
                                                              132, 109, 98, 1)),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey.shade600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 241, 241, 241),
                                              offset: Offset(-2, -2),
                                              blurRadius: 5,
                                              spreadRadius: 1),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 171, 171, 171),
                                              offset: Offset(2, 2),
                                              blurRadius: 5,
                                              spreadRadius: 1),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              child: Image(
                                                  image: AssetImage(
                                                      'assets/hairdresser.png'))),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Lesson 3',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromRGBO(
                                                              132, 109, 98, 1)),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey.shade600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 241, 241, 241),
                                              offset: Offset(-2, -2),
                                              blurRadius: 5,
                                              spreadRadius: 1),
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 171, 171, 171),
                                              offset: Offset(2, 2),
                                              blurRadius: 5,
                                              spreadRadius: 1),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10)),
                                              child: Image(
                                                  image: AssetImage(
                                                      'assets/hairdresser.png'))),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'Lesson 4',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromRGBO(
                                                              132, 109, 98, 1)),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey.shade600),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       children: [
            //         Container(
            //           width: 200,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.white,
            //           ),
            //           child: Column(
            //             children: [
            //               ClipRRect(
            //                   borderRadius: BorderRadius.only(
            //                       topLeft: Radius.circular(10),
            //                       topRight: Radius.circular(10)),
            //                   child: Image(
            //                       image: AssetImage('assets/hairdresser.png'))),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Column(
            //                   children: [
            //                     Row(
            //                       children: [
            //                         Text(
            //                           'Lesson 2',
            //                           style: TextStyle(
            //                               fontSize: 18,
            //                               fontWeight: FontWeight.bold,
            //                               color:
            //                                   Color.fromRGBO(132, 109, 98, 1)),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(
            //                       height: 8,
            //                     ),
            //                     Row(
            //                       children: [
            //                         Expanded(
            //                           child: Text(
            //                             'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            //                             style: TextStyle(
            //                                 color: Colors.grey.shade600),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(
            //                       height: 5,
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 10,
            //         ),
            //         Container(
            //           width: 200,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.white,
            //           ),
            //           child: Column(
            //             children: [
            //               ClipRRect(
            //                   borderRadius: BorderRadius.only(
            //                       topLeft: Radius.circular(10),
            //                       topRight: Radius.circular(10)),
            //                   child: Image(
            //                       image: AssetImage('assets/hairdresser.png'))),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Column(
            //                   children: [
            //                     Row(
            //                       children: [
            //                         Text(
            //                           'Lesson 3',
            //                           style: TextStyle(
            //                               fontSize: 18,
            //                               fontWeight: FontWeight.bold,
            //                               color:
            //                                   Color.fromRGBO(132, 109, 98, 1)),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(
            //                       height: 8,
            //                     ),
            //                     Row(
            //                       children: [
            //                         Expanded(
            //                           child: Text(
            //                             'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            //                             style: TextStyle(
            //                                 color: Colors.grey.shade600),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(
            //                       height: 5,
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 10,
            //         ),
            //         Container(
            //           width: 200,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(10),
            //             color: Colors.white,
            //           ),
            //           child: Column(
            //             children: [
            //               ClipRRect(
            //                   borderRadius: BorderRadius.only(
            //                       topLeft: Radius.circular(10),
            //                       topRight: Radius.circular(10)),
            //                   child: Image(
            //                       image: AssetImage('assets/hairdresser.png'))),
            //               Padding(
            //                 padding: const EdgeInsets.all(8.0),
            //                 child: Column(
            //                   children: [
            //                     Row(
            //                       children: [
            //                         Text(
            //                           'Lesson 4',
            //                           style: TextStyle(
            //                               fontSize: 18,
            //                               fontWeight: FontWeight.bold,
            //                               color:
            //                                   Color.fromRGBO(132, 109, 98, 1)),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(
            //                       height: 8,
            //                     ),
            //                     Row(
            //                       children: [
            //                         Expanded(
            //                           child: Text(
            //                             'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            //                             style: TextStyle(
            //                                 color: Colors.grey.shade600),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                     const SizedBox(
            //                       height: 5,
            //                     )
            //                   ],
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
