import 'package:flutter/material.dart';

import 'package:flutter_jd_address_selector/flutter_jd_address_selector.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String address = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: const Text('Plugin example app'), centerTitle: true),
        body: Center(child: Text('$address')),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _choiceAddressDialog();
            },
            child: Icon(Icons.location_on)));
  }

  void _choiceAddressDialog() async {
    print('======');
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return JDAddressDialog(
              onSelected: (province, city, county) {
                address = '$province-$city-$county';

                print('$address');
                setState(() {});
              },
              title: '选择地址',
              selectedColor: Colors.red,
              unselectedColor: Colors.black);
        });
  }
}
