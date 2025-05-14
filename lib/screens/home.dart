import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: unused_field, prefer_typing_uninitialized_variables
  var _isTaggedUI;
  // ignore: prefer_typing_uninitialized_variables
  var _isTaggedUX;
  // ignore: prefer_typing_uninitialized_variables
  var _isTaggedWeb;
  // ignore: prefer_typing_uninitialized_variables
  var _isTaggedRD;
  // ignore: prefer_typing_uninitialized_variables
  var _isTaggedGD;

  @override
  void initState() {
    super.initState();
    _isTaggedGD = true;
    _isTaggedRD = true;
    _isTaggedWeb = true;
    _isTaggedUX = true;
    _isTaggedUI = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _homeAppBar(),
      body: _homeBody(context),
    );
  }

  SingleChildScrollView _homeBody(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        _topHome(context),
        SizedBox(height: 20),
        _bodyHome(),
      ]),
    );
  }

  Column _bodyHome() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Suggested Jobs',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Colors.black),
              ),
              Row(
                children: [
                  Text(
                    'See all',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color.fromARGB(255, 17, 17, 251)),
                  ),
                  Icon(
                    size: 18,
                    Iconsax.arrow_right_34,
                    color: Color.fromARGB(255, 17, 17, 251),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _UIDesigner(),
                SizedBox(width: 15),
                _UXDesigner(),
                SizedBox(width: 15),
                _webDesigner(),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Recent Jobs',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Colors.black),
              ),
              Row(
                children: [
                  Text(
                    'See all',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color.fromARGB(255, 17, 17, 251)),
                  ),
                  Icon(
                    size: 18,
                    Iconsax.arrow_right_34,
                    color: Color.fromARGB(255, 17, 17, 251),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 17, 17, 251),
                      backgroundBlendMode: BlendMode.darken,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Center(
                      child: Text(
                    'All',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Center(
                      child: Text(
                    'Accountant',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 21, 21, 21),
                        fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Center(
                      child: Text(
                    'Developer',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 21, 21, 21),
                        fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Center(
                      child: Text(
                    'Designer',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 21, 21, 21),
                        fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Center(
                      child: Text(
                    'Content Creator',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 21, 21, 21),
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        _reactDeveloper(),
        SizedBox(height: 15),
        _graphicDesigner()
      ],
    );
  }

  Column _topHome(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 17, 17, 251),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                      iconColor: Theme.of(context).colorScheme.tertiary,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      prefixIcon: Icon(
                        Iconsax.search_normal_14,
                        weight: 30,
                      ),
                      hintText: 'Search Jobs'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 252, 227, 1)),
                child: Icon(
                  Iconsax.setting_54,
                  size: 27,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  AppBar _homeAppBar() {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Color.fromARGB(255, 17, 17, 251),
      title: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: Row(
          children: [
            Image.asset(
              'assets/images/worklance_logo2.png',
              width: 50,
              height: 50,
            ),
            SizedBox(width: 7),
            Text(
              'Worklance',
              style: TextStyle(
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 7),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 255, 255, 255)),
            height: 45,
            width: 45,
            child: Icon(
              Iconsax.notification5,
              color: Color.fromARGB(255, 17, 17, 251),
            ),
          ),
        )
      ],
    );
  }

  Column _reactDeveloper() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(115, 255, 255, 255),
              borderRadius: BorderRadius.circular(20)),
          height: 250,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/letterA.jpg')),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'React Developer',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 41, 41, 41)),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Amplify Avanue',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 49, 49, 49)),
                        ),
                      ],
                    ),
                    SizedBox(width: 65),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              _isTaggedRD = !_isTaggedRD;
                            });
                          },
                          icon: _isTaggedRD
                              ? Icon(
                                  Icons.bookmark_border,
                                  color: Color.fromARGB(255, 17, 17, 251),
                                  size: 33,
                                )
                              : Icon(
                                  Icons.bookmark,
                                  color: Color.fromARGB(255, 17, 17, 251),
                                  size: 33,
                                )),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.location5,
                      color: Color.fromARGB(255, 17, 17, 251),
                      size: 26,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Los Angeles, USA',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 49, 49, 49)),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 233, 233, 233)),
                        child: Center(
                          child: Text(
                            'Contract',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 233, 233, 233)),
                        child: Center(
                          child: Text(
                            'Remote',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 233, 233, 233)),
                        child: Center(
                          child: Text(
                            'Mid-Senior Level',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                            width: 100,
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage('assets/images/avatar1.jpg'),
                                ),
                                Positioned(
                                  left: 18,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage('assets/images/avatar2.jpg'),
                                  ),
                                ),
                                Positioned(
                                  left: 37,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage('assets/images/avatar3.jpg'),
                                  ),
                                ),
                                Positioned(
                                  left: 57,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage('assets/images/avatar5.jpg'),
                                  ),
                                ),
                                Positioned(
                                  left: 77,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 17, 17, 251)),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '658 Applicants',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 62, 62, 62)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '15k - 20k',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 17, 17, 251)),
                        ),
                        Icon(
                          Iconsax.dollar_circle,
                          color: Color.fromARGB(255, 17, 17, 251),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            '/month',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 62, 62, 62)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Column _graphicDesigner() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(115, 255, 255, 255),
              borderRadius: BorderRadius.circular(20)),
          height: 250,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/letterE.jpg')),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Graphic Designer',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 41, 41, 41)),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Easysoft Company',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 49, 49, 49)),
                        ),
                      ],
                    ),
                    SizedBox(width: 57),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              _isTaggedGD = !_isTaggedGD;
                            });
                          },
                          icon: _isTaggedGD
                              ? Icon(
                                  Icons.bookmark_border,
                                  color: Color.fromARGB(255, 17, 17, 251),
                                  size: 33,
                                )
                              : Icon(
                                  Icons.bookmark,
                                  color: Color.fromARGB(255, 17, 17, 251),
                                  size: 33,
                                )),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Iconsax.location5,
                      color: Color.fromARGB(255, 17, 17, 251),
                      size: 26,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Chicago, USA',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 49, 49, 49)),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 233, 233, 233)),
                        child: Center(
                          child: Text(
                            'Full-Time',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 233, 233, 233)),
                        child: Center(
                          child: Text(
                            'Remote',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 120,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Color.fromARGB(255, 233, 233, 233)),
                        child: Center(
                          child: Text(
                            'Medium Level',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                            width: 100,
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage('assets/images/avatar7.jpg'),
                                ),
                                Positioned(
                                  left: 18,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage('assets/images/avatar8.jpg'),
                                  ),
                                ),
                                Positioned(
                                  left: 37,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage('assets/images/avatar9.jpg'),
                                  ),
                                ),
                                Positioned(
                                  left: 57,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundImage: AssetImage(
                                        'assets/images/avatar10.jpg'),
                                  ),
                                ),
                                Positioned(
                                  left: 77,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 17, 17, 251)),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '455 Applicants',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 62, 62, 62)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 70),
                    Text(
                      '8k-10k',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 17, 17, 251)),
                    ),
                    Icon(
                      Iconsax.dollar_circle,
                      color: Color.fromARGB(255, 17, 17, 251),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '/month',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 62, 62, 62)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Container _UIDesigner() {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(115, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
      height: 250,
      width: 325,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/letterB.jpg',
                    width: 60,
                    height: 60,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'UI Designer',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 41, 41, 41)),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'BrioSoft Solutions',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 49, 49, 49)),
                    ),
                  ],
                ),
                SizedBox(width: 65),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _isTaggedUI = !_isTaggedUI;
                      });
                    },
                    icon: _isTaggedUI
                        ? Icon(
                            Icons.bookmark,
                            color: Color.fromARGB(255, 17, 17, 251),
                            size: 33,
                          )
                        : Icon(
                            Icons.bookmark_outline,
                            color: Color.fromARGB(255, 17, 17, 251),
                            size: 33,
                          ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Iconsax.location5,
                  color: Color.fromARGB(255, 17, 17, 251),
                  size: 26,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'New York, USA',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 49, 49, 49)),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 233, 233, 233)),
                    child: Center(
                      child: Text(
                        'Full-Time',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 233, 233, 233)),
                    child: Center(
                      child: Text(
                        'Remote',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 233, 233, 233)),
                    child: Center(
                      child: Text(
                        'Internship',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 100,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage:
                                  AssetImage('assets/images/avatar5.jpg'),
                            ),
                            Positioned(
                              left: 18,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/avatar6.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 37,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/avatar2.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 57,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/avatar10.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 77,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 17, 17, 251)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '322 Applicants',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 62, 62, 62)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '42k - 48k',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 17, 17, 251)),
                    ),
                    Icon(
                      Iconsax.dollar_circle,
                      color: Color.fromARGB(255, 17, 17, 251),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '/month',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 62, 62, 62)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _webDesigner() {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(115, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
      height: 250,
      width: 325,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/letterL.jpg',
                    width: 60,
                    height: 60,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Web Designer',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 41, 41, 41)),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Lightroom Dr.',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 49, 49, 49)),
                    ),
                  ],
                ),
                SizedBox(width: 60),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _isTaggedWeb = !_isTaggedWeb;
                      });
                    },
                    icon: _isTaggedWeb
                        ? Icon(
                            Icons.bookmark,
                            color: Color.fromARGB(255, 17, 17, 251),
                            size: 33,
                          )
                        : Icon(
                            Icons.bookmark_outline,
                            color: Color.fromARGB(255, 17, 17, 251),
                            size: 33,
                          ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Iconsax.location5,
                  color: Color.fromARGB(255, 17, 17, 251),
                  size: 26,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Washington, USA',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 49, 49, 49)),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 233, 233, 233)),
                    child: Center(
                      child: Text(
                        'Half-Time',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 233, 233, 233)),
                    child: Center(
                      child: Text(
                        'Remote',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 233, 233, 233)),
                    child: Center(
                      child: Text(
                        'Internship',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 100,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage:
                                  AssetImage('assets/images/avatar7.jpg'),
                            ),
                            Positioned(
                              left: 18,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/avatar9.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 37,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/avatar2.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 57,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/avatar1.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 77,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 17, 17, 251)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '551 Applicants',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 62, 62, 62)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '32k - 39k',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 17, 17, 251)),
                    ),
                    Icon(
                      Iconsax.dollar_circle,
                      color: Color.fromARGB(255, 17, 17, 251),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '/month',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 62, 62, 62)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container _UXDesigner() {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(115, 255, 255, 255),
          borderRadius: BorderRadius.circular(20)),
      height: 250,
      width: 325,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/letterC.jpg',
                    width: 60,
                    height: 60,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'UX Designer',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 41, 41, 41)),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'CarioBeer Corp.',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 49, 49, 49)),
                    ),
                  ],
                ),
                SizedBox(width: 75),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _isTaggedUX = !_isTaggedUX;
                      });
                    },
                    icon: _isTaggedUX
                        ? Icon(
                            Icons.bookmark,
                            color: Color.fromARGB(255, 17, 17, 251),
                            size: 33,
                          )
                        : Icon(
                            Icons.bookmark_outline,
                            color: Color.fromARGB(255, 17, 17, 251),
                            size: 33,
                          ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Iconsax.location5,
                  color: Color.fromARGB(255, 17, 17, 251),
                  size: 26,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Florida, USA',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 49, 49, 49)),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 233, 233, 233)),
                    child: Center(
                      child: Text(
                        'Contract',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 233, 233, 233)),
                    child: Center(
                      child: Text(
                        'Remote',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color.fromARGB(255, 233, 233, 233)),
                    child: Center(
                      child: Text(
                        'High Level',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 100,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage:
                                  AssetImage('assets/images/avatar7.jpg'),
                            ),
                            Positioned(
                              left: 18,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/avatar4.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 37,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/avatar8.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 57,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/images/avatar10.jpg'),
                              ),
                            ),
                            Positioned(
                              left: 77,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 17, 17, 251)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        '226 Applicants',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 62, 62, 62)),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '12k - 17k',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 17, 17, 251)),
                    ),
                    Icon(
                      Iconsax.dollar_circle,
                      color: Color.fromARGB(255, 17, 17, 251),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '/month',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 62, 62, 62)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
