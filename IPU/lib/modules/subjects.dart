import 'package:flutter/material.dart';
import 'package:ipu/layout/subject_page.dart';
import 'package:ipu/shared/styles/colors.dart';
import 'package:ipu/shared/styles/my_icons.dart';
import 'package:ipu/shared/styles/styles.dart';

class Subjects extends StatefulWidget {
   const Subjects({Key? key}) : super(key: key);
  @override
  State<Subjects> createState() => _SubjectsState();
}

class _SubjectsState extends State<Subjects> {
  String year = 'Year';
  String term = 'Term';
  String filter = 'Qualification';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20.0),
              color: white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(year,
                            style: const TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      PopupMenuButton(
                        icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('All',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "All");
                                setState(() {
                                  year = 'All';
                                });
                              }
                              ,
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('First Year',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "First Year");
                                setState(() {
                                  year = 'First Year';
                                });
                              }
                              ,
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Second Year',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "Second Year");
                                setState(() {
                                  year = 'Second Year';
                                });
                              },
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Third Year',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "Third Year");
                                setState(() {
                                  year = 'Third Year';
                                });
                              },
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Four Year',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "Four Year");
                                setState(() {
                                  year = 'Four Year';
                                });
                              },
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Five Year',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "Five Year");
                                setState(() {
                                  year = 'Five Year';
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(term,
                            style: const TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      PopupMenuButton(
                        icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('First',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "First");
                                setState(() {
                                  term = 'First';
                                });
                              }
                              ,
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Second',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "Second");
                                setState(() {
                                   term = 'Second';
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(filter,
                            style: const TextStyle(
                              color: black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      PopupMenuButton(
                        icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('All',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "All");
                                setState(() {
                                  filter = 'All';
                                });
                              }
                              ,
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Qualified',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "Qualified");
                                setState(() {
                                   filter = 'Qualified';
                                });
                              },
                            ),
                          ),
                          PopupMenuItem(
                            child: ListTile(
                              title: Text('Unqualified',
                                style: requestStyle,
                              ),
                              onTap: (){
                                Navigator.pop(context, "Unqualified");
                                setState(() {
                                   term = 'Unqualified';
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ),
          ListTile(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const SubjectClass()));
            },
            title: Text('English 2',
            style: subjectStyle,),
            subtitle: Row(
              children: const [
                Icon(Icons.class_),
                Text('3 hours'),
                SizedBox(
                  width: 5,
                ),
                Icon(MyFlutterApp.education,
                size: 25,
                ),
                Text('Second year')
              ],
            ),

          ),
          ListTile(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const SubjectClass()));
            },
            title: Text('English 2',
            style: subjectStyle,),
            subtitle: Row(
              children: const [
                Icon(Icons.class_),
                Text('3 hours'),
                SizedBox(
                  width: 5,
                ),
                Icon(MyFlutterApp.education,
                size: 25,
                ),
                Text('Second year')
              ],
            ),

          ),
          ListTile(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const SubjectClass()));
            },
            title: Text('English 2',
            style: subjectStyle,),
            subtitle: Row(
              children: const [
                Icon(Icons.class_),
                Text('3 hours'),
                SizedBox(
                  width: 5,
                ),
                Icon(MyFlutterApp.education,
                size: 25,
                ),
                Text('Second year')
              ],
            ),

          ),
          ListTile(
            onTap: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const SubjectClass()));
            },
            title: Text('English 2',
            style: subjectStyle,),
            subtitle: Row(
              children: const [
                Icon(Icons.class_),
                Text('3 hours'),
                SizedBox(
                  width: 5,
                ),
                Icon(MyFlutterApp.education,
                size: 25,
                ),
                Text('Second year')
              ],
            ),

          ),


        ],
      ),
    );
  }
}
