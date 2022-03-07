import 'package:flutter/material.dart';
import 'package:ipu/layout/login.dart';
import 'package:ipu/shared/components/components.dart';
import 'package:ipu/shared/styles/my_icons.dart';
import 'package:ipu/shared/styles/styles.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);
final String profileName ='Ismaeil Alaranji';
final String cityName = 'Damascus';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Image.asset('/assets/images/logo.png'),
              ),
              title: Text(profileName),
              subtitle: Text(cityName),
            ),
            theDivider(),
            settingTile(
              iconName: MyFlutterApp.language,
              tileTitle: 'Language',
              tileSub: 'English'
            ),
            settingTile(
              iconName: MyFlutterApp.about,
              tileTitle: 'Terms and Conditions'
            ),
            settingTile(
                iconName: MyFlutterApp.policy,
              tileTitle: 'Privacy Policy'
            ),
            ListTile(
              leading: const Icon(MyFlutterApp.logout,
                size: 50,),
              // leading: tileLeading,
              title: Text('Logout',
                style: requestStyle,
              ),
              onTap: (){
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const Login()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
