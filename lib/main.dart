import 'package:flutter/material.dart';
import 'package:flutterprovider/model/notimodel.dart';
import 'package:flutterprovider/pages/first.dart';
import 'package:provider/provider.dart';

import 'model/appmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppModel>(
          create: (_) => AppModel(),
        ),
        ChangeNotifierProvider<NotiModel>(
          create: (_) => NotiModel(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirstPage(),
      ),
    );
  }
}
