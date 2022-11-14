import 'package:flutter/material.dart';
import 'package:flutterprovider/model/appmodel.dart';
import 'package:flutterprovider/pages/second.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Consumer<AppModel>(
        builder: (context, appModel, child) => Center(
          child: Column(
            children: [
              Text(appModel.text1),
              Text(appModel.text2),
              TextButton(
                  onPressed: () {
                    setState(() {
                      appModel.text1 = "Change in Button";
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: const Text("Change Value"))
            ],
          ),
        ),
      ),
    );
  }
}
