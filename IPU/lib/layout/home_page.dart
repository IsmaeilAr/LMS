import 'package:flutter/material.dart';
import 'package:ipu/layout/search_page.dart';
import 'package:ipu/modules/home.dart';
import 'package:ipu/modules/requests.dart';
import 'package:ipu/modules/settings.dart';
import 'package:ipu/modules/subjects.dart';
import 'package:ipu/shared/components/components.dart';
import 'package:ipu/shared/styles/colors.dart';
import 'package:ipu/shared/styles/my_icons.dart';
import 'package:ipu/shared/styles/styles.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex =0;
  double iconSize = 30;
  List<Widget> screens = [
    const Home(),
    const Requests(),
    const Subjects(),
    const Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        title: Text('Ittihad Private University',
        style: titleStyle,
        ),
        actions: [
          Visibility(
            visible: currentIndex==0 ? true:false,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  tooltip: 'Search',
                  icon: Icon(MyFlutterApp.search,
                  size: iconSize,),
                  color: black,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const SearchPage()));
                  },
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              tooltip: 'Notifications',
              icon:  Icon(MyFlutterApp.notification,
              size: iconSize,),
              color: black,
              onPressed: () {  },
            ),
          ),
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: white,
        currentIndex: currentIndex,
        selectedItemColor: black,
        unselectedItemColor: infoPink,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) {
          currentIndex = index;
          setState(() {
            // currentIndex = index;
          }

          );
        },
        items: [
          barItem(
            barItemText: 'Home',
            barItemIcon:  Icon(MyFlutterApp.home,
              size: iconSize,),
          ),
          barItem(
              barItemIcon:  Icon(MyFlutterApp.document,
                size: iconSize,),
              barItemText: 'Requests'
          ),
          barItem(
            barItemText: 'Subjects',
            barItemIcon:  Icon(MyFlutterApp.education,
              size: iconSize,),
          ),
          barItem(
            barItemText: 'Settings',
            barItemIcon:  Icon(MyFlutterApp.setting,
            size: iconSize,),
          ),
        ],
      ),
    );
  }
}
