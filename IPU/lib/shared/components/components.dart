import 'package:flutter/material.dart';
import 'package:ipu/shared/styles/colors.dart';
import 'package:ipu/shared/styles/styles.dart';

BottomNavigationBarItem barItem({
   String barItemText =  ' ',
  Icon barItemIcon = const Icon(Icons.alarm),
}) => BottomNavigationBarItem(
    icon: barItemIcon,
    label: barItemText,
);

Widget infoLabel({
  double w = 210,
  double h = 45,
  double radius = 10,
  double padding = 12.0,
  Color labelColor = blue,
  String infoText = 'test',
  String infoNum = '50',
}) => Container(
  width: w,
  height: h,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(radius)),
    color: labelColor,
  ),
  child: Stack(
    children: [
      Positioned(
        right: 0.0,
        bottom: 0.0,
        child:
          Image.asset('assets/images/button_style.png'),

      ),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(infoText,
              style: infoStyle
              ),
              const SizedBox(width: 5,),
              // const Expanded(
              //   child:
              // ),
              Text('(''$infoNum'')',
              style: infoStyle,),
            ],
          ),
        ),
      ),
    ],

  ),
);


bool isSelected=false ;
// Widget day ({
//   int dayNum = 0,
//   double dayRadius = 21,
//   String dayName = 'day',
//   double sizeFont = 18,
// })		=> Container(
//   decoration: const BoxDecoration(
//     shape: BoxShape.circle,
//   ),
//   child:   ElevatedButton(
//     clipBehavior: Clip.antiAlias,
//     child:   CircleAvatar(
//       backgroundColor: white,
//       radius: 25,
//       child: Text(
//         'Wed',
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontSize: sizeFont,
//         ),
//       ),
//     ),
//     onPressed: (){
//
//         }
//
//   ),
// );
bool checkIfSelected (int dayNum, int selectedDay){
  if (dayNum == selectedDay) {
    return true;
  }
  else{
    return false;
  }
}

Widget selectedDayButton ({
double dayRadius=24,
  double sizeFont=14,
}) => CircleAvatar(
backgroundColor: isSelected ? blue : Colors.transparent,
radius: dayRadius+4,
child: CircleAvatar(
backgroundColor: isSelected ? white : Colors.transparent,
radius: dayRadius+2,
child: CircleAvatar(
backgroundColor: grey,
radius: dayRadius,
child: Text(
'dayName',
textAlign: TextAlign.center,
style: TextStyle(
fontSize: sizeFont,
),
),
),
),
);

Widget subject ({
  String subjectName = 'Subject test',
  String lectureStartTime = '9:00',
  String lectureEndTime = '10:30',
  String lectureDay = 'Wed',
}) => ListTile(
  title: Text(subjectName,
    style: subjectStyle,),
  subtitle: Text(
    'from $lectureStartTime to $lectureEndTime   $lectureDay'
  ),
);

Widget requestButton ({
  String requestName = 'request1',

}) => Container(
  padding: const EdgeInsets.symmetric(
    vertical: 15.0
  ),
  child:   ElevatedButton(
  onPressed: (){},
  style:whiteButtonStyle,
  child:   Center(
  child: Text(
    requestName,
  style: requestStyle,
  ),
  )
  ),
);

void someFunction(){}

Widget generalButton ({
  String text = 'Action',
  ButtonStyle buttonStyle = const ButtonStyle(),
  Function buttonFunction = someFunction,
}) => ElevatedButton(

child: Text(text),
onPressed: (){
buttonFunction;
},
clipBehavior: Clip.antiAlias,
style: buttonStyle,
);

Widget textButton({
  String text = 'This is clickable',
  Color tColor = blue,
  Function function = someFunction,
}) =>
TextButton(
onPressed: () {
  function;
},
child: Text(
  text,
style: TextStyle(color: tColor),
),
);

Widget settingTile ({
  IconData iconName= Icons.settings,
  Function function = someFunction,
  String tileTitle='setting1',
  String tileSub='',
}) => ListTile(
  leading: Icon(iconName,
  size: 50,),
  // leading: tileLeading,
  title: Text(tileTitle,
  style: requestStyle,
  ),
  subtitle: Text(tileSub,
  style: greyStyle,
  ),
  onTap: (){

  },
);


String thePassword = '';
Widget textField ({
  bool isPassword = false,
  String label = '',
  // Function function = someFunction,
  // Widget iconB = Icon(Icons.alarm),
}) => TextFormField(
  validator: (value)
  {
    if(value!.isEmpty){
      return 'Please enter $label';
    }
    return null;
  },
  keyboardType: isPassword ? TextInputType.visiblePassword : TextInputType.text,
  // obscureText: isPassword ? _obscureText1 : false,
  onFieldSubmitted: (String value) {
   thePassword = value;
  },
  decoration: InputDecoration(
    fillColor: white,
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: grey,
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: blue,
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
    labelText: label,
    labelStyle: const TextStyle(
      color: black,
      fontWeight: FontWeight.bold,
    ),

  ),
);

Widget customSearchBar = const ListTile(
leading: Icon(
Icons.search,
color: grey,
size: 28,
),
title: TextField(
decoration: InputDecoration(
hintText: 'Search',
hintStyle: TextStyle(
color: grey,
fontSize: 18,
),
border: InputBorder.none,
),
style: TextStyle(
color: black,
),
),
);

// PopupMenuButton(
//
// child: TextButton.icon(
// label: Text(
// 'Your label'
// ),
// icon: Icon(
// Icons.g_translate,
// color: Theme.of(context).primaryColor,
// ),
// onPressed: () {
// //do logic, or keep it empty
// },
// ),
//
//
// ),

// PopupMenuButton(
// child: TextButton.icon(
// label: Text(
// 'Your label'
// ),
// icon: Icon(
// Icons.g_translate,
// color: Theme.of(context).primaryColor,
// ),
// onPressed: () {
// //do logic, or keep it empty
// },
// ),
// itemBuilder: (BuildContext context) => <PopupMenuEntry>[
// PopupMenuItem(
// child: ListTile(
// title: Text('Damascus',
// style: requestStyle,
// ),
// onTap: (){
// Navigator.pop(context, "Damascus");
// setState(() {
// branch = 'Damascus';
// });
// }
// ,
// ),
// ),
// PopupMenuItem(
// child: ListTile(
// title: Text('Aleppo',
// style: requestStyle,
// ),
// onTap: (){
// Navigator.pop(context, "Aleppo");
// setState(() {
// branch = 'Aleppo';
// });
// },
// ),
// ),
// ],
// ),


Widget newDay({
  String text = 'all',

}) => Padding(
  padding: const EdgeInsets.all(10.0),
  child:   Stack(
  alignment: Alignment.bottomRight,
  children:  [
  CircleAvatar(
  backgroundColor: grey,
  radius: 25,
  child: Text(
  text,
  textAlign: TextAlign.center,
  style: const TextStyle(
  fontSize: 12,
    color: black,
  ),
  ),
  ),
  ],
  ),
);

Widget selectedDay ({
  String text = 'all'
}) => Stack(
  alignment: Alignment.bottomRight,
  children:  [
    const CircleAvatar(
      backgroundColor: blue,
      radius: 25,
    ),
    Padding(
      padding: const EdgeInsets.all(1.0),
      child: CircleAvatar(
        backgroundColor: grey,
        radius: 25,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: black,
          ),
        ),
      ),
    ),
  ],
);

Widget theDivider () => const Divider(
    // height: 0.6,
    // thickness: 1.0,
    color: grey,
);