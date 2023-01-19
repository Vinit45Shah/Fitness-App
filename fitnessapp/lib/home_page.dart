import 'package:fitnessapp/details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Training',
                  style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                InkWell(
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                  ),
                  onTap: () {
                    //action code when clicked
                    print("The calender icon is clicked");
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                  ),
                  onTap: () {
                    //action code when clicked
                    print("The calender icon is clicked");
                  },
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                  onTap: () {
                    //action code when clicked
                    print("The  calender icon is clicked");
                  },
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Your program',
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                InkWell(
                  onTap: () {
                    Get.to(() => VideoPlayer());
                  },
                  child: Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageDetail,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Icon(
                    Icons.arrow_forward,
                    size: 20,
                  ),
                  onTap: () {
                    //action code when clicked
                    print("The icon is clicked");
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    color.AppColor.gradientFirst.withOpacity(.8),
                    color.AppColor.gradientSecond.withOpacity(1),
                  ], begin: Alignment.bottomLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(80)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10, 10),
                      blurRadius: 12,
                      color: color.AppColor.gradientSecond.withOpacity(.1),
                    )
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 20, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Next workout',
                        style: TextStyle(
                            fontSize: 16,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Legs Toning',
                        style: TextStyle(
                            fontSize: 25,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                      Text(
                        'and Glutes Workout',
                        style: TextStyle(
                            fontSize: 25,
                            color: color.AppColor.homePageContainerTextSmall),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 20,
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '60 min',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: color
                                        .AppColor.homePageContainerTextSmall),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                      color: color.AppColor.gradientFirst,
                                      blurRadius: 40,
                                      offset: Offset(1, 2))
                                ]),
                            padding: const EdgeInsets.only(right: 10.0),
                            child: InkWell(
                              onTap: () {
                                print('Next workout play button clicked');
                              },
                              child: Icon(
                                Icons.play_circle_fill,
                                size: 50,
                                color:
                                    color.AppColor.homePageContainerTextSmall,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 30),
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/card.jpg'),
                              fit: BoxFit.fill),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 40,
                                offset: Offset(8, 10),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(.5)),
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(-1, -5),
                                color: color.AppColor.gradientSecond
                                    .withOpacity(.2))
                          ])),
                  Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(right: 180, bottom: 30),
                      decoration: BoxDecoration(
                        // color: Colors.redAccent.withOpacity(.3),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/figure.png',
                          ),
                          // fit: BoxFit.fill
                        ),
                      )),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    // color: Colors.redAccent.withOpacity(0.)
                    margin: EdgeInsets.only(left: 150, top: 50),
                    child: Column(
                      children: [
                        Text(
                          'You are doing great',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: color.AppColor.homePageDetail),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(right: 40),
                          child: RichText(
                            text: TextSpan(
                              text: 'Keep it up\n',
                              style: TextStyle(
                                  color: color.AppColor.homePagePlanColor,
                                  fontSize: 16),
                              children: [TextSpan(text: 'Stick to your plan')],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(children: [
              Text(
                'Area of focus',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: color.AppColor.homePageTitle),
              )
            ]),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200]),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('assets/ex1.png'),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 5),
                                  blurRadius: 3,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(.3)),
                              BoxShadow(
                                  offset: Offset(-5, -5),
                                  blurRadius: 3,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(.3)),
                            ],
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Glutes',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: color.AppColor.homePageDetail),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200]),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('assets/ex2.png'),
                            ),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 5),
                                  blurRadius: 3,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(.3)),
                              BoxShadow(
                                  offset: Offset(-5, -5),
                                  blurRadius: 3,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(.3)),
                            ],
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Abs',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: color.AppColor.homePageDetail),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200]),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/ex3.png')),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(-5, -5),
                                  blurRadius: 3,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(.3)),
                              BoxShadow(
                                  offset: Offset(5, 5),
                                  blurRadius: 3,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(.3)),
                            ],
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Legs',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: color.AppColor.homePageDetail),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[200]),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage('assets/ex4.png')),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(5, 5),
                                  blurRadius: 3,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(.3)),
                              BoxShadow(
                                  offset: Offset(-5, -5),
                                  blurRadius: 3,
                                  color: color.AppColor.gradientSecond
                                      .withOpacity(.3)),
                            ],
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Arms',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: color.AppColor.homePageDetail),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
