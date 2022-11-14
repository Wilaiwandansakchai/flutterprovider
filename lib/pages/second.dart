import 'package:flutter/material.dart';
import 'package:flutterprovider/model/notimodel.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Consumer<NotiModel>(
        builder: (context, model, child) => Center(
          child: Column(
            children: [
              Text(model.text1),
              Text(model.text2),
              TextButton(
                  onPressed: () {
                    model.text1 = "Change By Button";
                  },
                  child: const Text("Change Value"))
            ],
          ),
        ),
      ),
    );
  }
}
