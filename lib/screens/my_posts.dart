import 'package:flutter/material.dart';

class MyPostsScreen extends StatelessWidget {
  const MyPostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 60,
          backgroundColor: Color.fromARGB(255, 17, 17, 251),
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'My Posts',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255)),
                height: 45,
                width: 45,
                child: Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 17, 17, 251),
                ),
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: ClipRRect(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: const Color.fromARGB(255, 238, 239, 245)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                        color: Color.fromARGB(222, 17, 17, 251),
                        borderRadius: BorderRadius.circular(25)),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      _TabItem(title: 'Posts'),
                      _TabItem(title: 'Searches'),
                      _TabItem(title: 'Follows'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                Image.asset(
                  'assets/images/Illustration-PNG-Cutout.png',
                  width: 400,
                  height: 400,
                ),
                Center(
                  child: Text(
                    'Recieve notifications about jobs added to Favourites',
                    style: TextStyle(
                        color: Color.fromARGB(255, 21, 21, 21),
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Illustration-PNG-Photo.png',
                    width: 400,
                    height: 400,
                  ),
                  Center(
                    child: Text(
                      'Save your searches, we will notify you if new jobs appear for them',
                      style: TextStyle(
                          color: Color.fromARGB(255, 21, 21, 21),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Illustration-PNG-Follow.png',
                    width: 400,
                    height: 400,
                  ),
                  Center(
                      child: Text(
                    'Follow companies to stay updated on their posts',
                    style: TextStyle(
                        color: Color.fromARGB(255, 21, 21, 21),
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String title;

  const _TabItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
