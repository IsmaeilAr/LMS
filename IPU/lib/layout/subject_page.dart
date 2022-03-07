import 'package:flutter/material.dart';
import 'package:ipu/modules/subjects.dart';
import 'package:ipu/shared/styles/my_icons.dart';
import 'package:ipu/shared/styles/styles.dart';


class SubjectClass extends StatefulWidget {
  const SubjectClass({Key? key}) : super(key: key);

  @override
  State<SubjectClass> createState() => _SubjectClassState();
}

class _SubjectClassState extends State<SubjectClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
          Navigator.pop(context);
        },
            icon:  const Icon(Icons.arrow_back)
        ),
        title: Text('Join class',
        style: subjectStyle,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Class name',
              style: subjectStyle,),
              subtitle: Text('English 2',style: greyStyle,),
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(Icons.class_),
                  Text('3 hours',
                  style: subjectStyle,),
                ],
              ),

            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(MyFlutterApp.education),
                  Text('Level',
                  style: subjectStyle,),
                ],

              ),
subtitle: Text('Fifth year',
style: greyStyle,),
            ),
            ListTile(
              title: Text('Class type',
                style: subjectStyle,),
              subtitle: Text('Theoretical',style: greyStyle,),
            ),
            ListTile(
              title: Text('Subject number:',
                style: subjectStyle,),
              subtitle: Text('7888 DS',style: greyStyle,),
            ),
            ListTile(
              title: Text('Qualification:',
                style: subjectStyle,),
              subtitle: Text('English 1',style: greyStyle,),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 15, 16, 50),
              child: ElevatedButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Class is joined successfully'),
                        duration: Duration(milliseconds: 2000),
                        backgroundColor: Colors.blueAccent,
                      ),
                    );
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => const Subjects()));

                  },
                  style:blueButtonStyle,
                  child:   Center(
                    child: Text(
                      'Join',
                      style: infoStyle,
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
