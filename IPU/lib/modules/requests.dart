import 'package:flutter/material.dart';
import 'package:ipu/shared/components/components.dart';
import 'package:ipu/shared/styles/colors.dart';

class Requests extends StatelessWidget {
  const Requests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadiusDirectional.all(Radius.circular(10))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.start,
                      spacing: 15,
                      runSpacing: 15,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: infoLabel(
                              labelColor: infoNavyBlue,
                              infoText: 'Sent'
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: infoLabel(
                              labelColor: infoLightBlue,
                              infoText: 'In process'
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: infoLabel(
                              labelColor: infoBlue,
                              infoText: 'Rejected'
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: infoLabel(
                              labelColor: infoNavyBlue,
                              infoText: 'Accepted'
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: grey,
              ),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      requestButton(
                        requestName: 'Objection request',
                      ),
                      requestButton(
                        requestName: 'Conflict request'
                      ),
                      requestButton(
                        requestName: 'Replacement request'
                      ),
                      requestButton(
                        requestName: 'Re-correction request'
                      ),
                      requestButton(
                        requestName: 'Request to stop registration'
                      ),
                      requestButton(
                        requestName: 'Request a postponement document'
                      ),
                    ],
                  ),
                ),
              ),
            )


            // SingleChildScrollView(
            //   // padding: const EdgeInsets.symmetric(
            //   //   vertical: 5,
            //   //   horizontal: 10,
            //   // ),
            //   child: ListView(
            //     // padding: const EdgeInsets.all(10),
            //     scrollDirection: Axis.vertical,
            //     // shrinkWrap: true,
            //     // itemExtent: 10,
            //     children: [
            //       subject(),
            //
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
