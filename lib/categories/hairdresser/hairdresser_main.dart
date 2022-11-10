import 'package:beauty_app/categories/hairdresser/lesson1.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:video_player/video_player.dart';

class HairdresserMain extends StatefulWidget {
  const HairdresserMain({Key? key}) : super(key: key);

  @override
  State<HairdresserMain> createState() => _HairdresserMainState();
}

class _HairdresserMainState extends State<HairdresserMain> {
  late VideoPlayerController hairVideoController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hairVideoController = VideoPlayerController.asset(
      'assets/hairdresser.mp4',
    )..initialize().then((value) => hairVideoController.play());
    hairVideoController.setLooping(true);
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
          'Hairdresser',
          style: TextStyle(color: Color.fromRGBO(132, 109, 98, 1)),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: SizedBox(
                      height: 250, child: VideoPlayer(hairVideoController))),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Lessons',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: LessonOne()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      child: Text(
                                        '1',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      radius: 14,
                                      backgroundColor:
                                          Color.fromRGBO(132, 109, 98, 1),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Lesson 1',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Icon(Icons
                                              .keyboard_arrow_right_outlined)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Text(
                                      '2',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    radius: 14,
                                    backgroundColor:
                                        Color.fromRGBO(132, 109, 98, 1),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lesson 2',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Icon(
                                            Icons.keyboard_arrow_right_outlined)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Text(
                                      '3',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    radius: 14,
                                    backgroundColor:
                                        Color.fromRGBO(132, 109, 98, 1),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lesson 3',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Icon(
                                            Icons.keyboard_arrow_right_outlined)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Text(
                                      '4',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    radius: 14,
                                    backgroundColor:
                                        Color.fromRGBO(132, 109, 98, 1),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lesson 4',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Icon(
                                            Icons.keyboard_arrow_right_outlined)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Text(
                                      '5',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    radius: 14,
                                    backgroundColor:
                                        Color.fromRGBO(132, 109, 98, 1),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lesson 5',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Icon(
                                            Icons.keyboard_arrow_right_outlined)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Text(
                                      '6',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    radius: 14,
                                    backgroundColor:
                                        Color.fromRGBO(132, 109, 98, 1),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lesson 6',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Icon(
                                            Icons.keyboard_arrow_right_outlined)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Text(
                                      '7',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    radius: 14,
                                    backgroundColor:
                                        Color.fromRGBO(132, 109, 98, 1),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lesson 7',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Icon(
                                            Icons.keyboard_arrow_right_outlined)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    child: Text(
                                      '8',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    radius: 14,
                                    backgroundColor:
                                        Color.fromRGBO(132, 109, 98, 1),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Lesson 8',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Icon(
                                            Icons.keyboard_arrow_right_outlined)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
