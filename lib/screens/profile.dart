import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: Color.fromARGB(255, 17, 17, 251),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'My Profile',
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
                Iconsax.notification5,
                color: Color.fromARGB(255, 17, 17, 251),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              child: Container(
                color: Color.fromARGB(255, 17, 17, 251),
                height: 250,
              ),
            ),
            Positioned(
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  _topProfile(),
                  _bodyProfile(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _topProfile() {
    return Column(
      children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 0.1),
              color: const Color.fromARGB(255, 238, 239, 245),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage('assets/images/avatar10.jpg'),
                    ),
                    Positioned(
                      right: 10,
                      top: 100,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 238, 239, 245),
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.camera_alt_sharp,
                          size: 17,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.edit_outlined,
                            size: 22,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'John Anderson',
                            style: TextStyle(
                                color: Color.fromARGB(255, 21, 21, 21),
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Ubuntu'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            weight: 1,
                            CupertinoIcons.mail,
                            size: 22,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'johnanderson@gmail.com',
                            style: TextStyle(
                                color: Color.fromARGB(255, 21, 21, 21),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Ubuntu'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.phone,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '+1 800 937 2256',
                            style: TextStyle(
                                color: Color.fromARGB(255, 21, 21, 21),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Ubuntu'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 17, 17, 251),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _bodyProfile(context) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 238, 239, 245),
      ),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          _tile('Favourites', Iconsax.heart4, Iconsax.arrow_right_34),
          Divider(
            color: const Color.fromARGB(255, 226, 226, 226),
          ),
          _tile('Language', Iconsax.language_square, Iconsax.arrow_right_34),
          Divider(
            color: const Color.fromARGB(255, 226, 226, 226),
          ),
          _tile('Balance', Iconsax.wallet, Iconsax.arrow_right_34),
          Divider(
            color: const Color.fromARGB(255, 226, 226, 226),
          ),
          _tile('My Orders', Iconsax.tick_circle, Iconsax.arrow_right_34),
          Divider(
            color: const Color.fromARGB(255, 226, 226, 226),
          ),
          _tile('Settings', Iconsax.setting_24, Iconsax.arrow_right_34),
          Divider(
            color: const Color.fromARGB(255, 226, 226, 226),
          ),
          _tile('Clear History', Iconsax.clock, Iconsax.arrow_right_34),
          Divider(
            color: const Color.fromARGB(255, 226, 226, 226),
          ),
          _tile('Delete Profile', Iconsax.profile_delete4,
              Iconsax.arrow_right_34),
          Divider(
            color: const Color.fromARGB(255, 226, 226, 226),
          ),
          _tileLogout(Iconsax.logout, 'Logout', Iconsax.arrow_right_34),
          Divider(
            color: const Color.fromARGB(255, 226, 226, 226),
          ),
        ],
      ),
    ),
  );
}

ListTile _tile(
  String title,
  IconData icon,
  IconData trailing,
) {
  return ListTile(
    leading: Icon(
      size: 29,
      icon,
      color: Color.fromARGB(255, 17, 17, 251),
      weight: 40.0,
    ),
    title: Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.w400, fontSize: 17, color: Colors.black),
    ),
    trailing: Icon(
      trailing,
      size: 20,
      color: Color.fromARGB(255, 17, 17, 251),
    ),
  );
}

ListTile _tileLogout(IconData logOut, String title, IconData trailing) {
  return ListTile(
    leading: Icon(
      size: 29,
      logOut,
      color: const Color.fromARGB(255, 255, 0, 0),
      weight: 40.0,
    ),
    title: Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 17,
          color: Color.fromARGB(255, 21, 21, 21)),
    ),
    trailing: Icon(
      trailing,
      size: 20,
      color: Color.fromARGB(255, 17, 17, 251),
    ),
  );
}
