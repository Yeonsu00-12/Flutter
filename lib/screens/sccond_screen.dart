import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String screenData;
  SecondScreen({required this.screenData}); // 생선자 선언
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('screenData: ' + screenData),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Go to First Screen'))
          ],
        ),
      ),
    );
  }
}
