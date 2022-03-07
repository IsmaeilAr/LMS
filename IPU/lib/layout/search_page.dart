import 'package:flutter/material.dart';
import 'package:ipu/shared/components/components.dart';
import 'package:ipu/shared/styles/my_icons.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back)),
      title: customSearchBar,
      automaticallyImplyLeading: false,
    ),
    );
  }
}
