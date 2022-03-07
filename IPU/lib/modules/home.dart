import 'package:flutter/material.dart';
import 'package:ipu/shared/components/components.dart';
import 'package:ipu/shared/styles/colors.dart';
import 'package:ipu/shared/styles/styles.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<Widget> days = [
  //   Home(),
  //   Home(),
  //   Home(),
  //   Home(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 15,
                runSpacing: 15,
                children: [
                  infoLabel(
                    labelColor: infoLightBlue,
                    infoText: 'Average',
                    infoNum: '3.4/4',
                  ),
                  infoLabel(
                      labelColor: infoNavyBlue,
                      infoText: 'Alerts',
                      infoNum: '2'
                  ),
                  infoLabel(
                    labelColor: infoBlue,
                    infoText: 'Accomplished hours',
                    infoNum: '98',
                  ),
                  infoLabel(
                    labelColor: infoBlue,
                    infoText: 'remaining hours',
                    infoNum: '73',
                  ),
                  infoLabel(
                    labelColor: infoNavyBlue,
                    infoText: 'Remaining Subjects',
                    infoNum: '23',
                  ),
                  infoLabel(
                    labelColor: infoLightBlue,
                    infoText: 'Completed Subjects',
                    infoNum: '25',
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: theDivider(),
            ),
            Container(
              decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.zero,
                  bottom: Radius.circular(15),
                ),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  selectedDay(
                      text: 'All'
                  ),newDay(
                      text: 'Wed'
                  ),newDay(
                      text: 'Thu'
                  ),newDay(
                      text: 'Fri'
                  ),newDay(
                      text: 'Sat'
                  ),

                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: grey,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    subject(
                        subjectName: 'Maths 3',
                        lectureStartTime: '9:00',
                        lectureEndTime: '10:30',
                        lectureDay: 'Wed'
                    ),
                    subject(
                        subjectName: 'Programming 1',
                        lectureStartTime: '10:00',
                        lectureEndTime: '11:30',
                        lectureDay: 'Thu'
                    ),
                    subject(
                        subjectName: 'Arabic',
                        lectureStartTime: '12:00',
                        lectureEndTime: '1:30',
                        lectureDay: 'Fri'
                    ),
                    subject(
                        subjectName: 'English 2',
                        lectureStartTime: '2:00',
                        lectureEndTime: '3:30',
                        lectureDay: 'Fri'
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
