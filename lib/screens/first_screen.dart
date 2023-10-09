import 'package:flutter/material.dart';
import 'package:example_1/screens/sccond_screen.dart';

class FirstScreen extends StatefulWidget {
  _FirstScreenState createState() => _FirstScreenState(); // 상태 생성
}

class _FirstScreenState extends State<FirstScreen> {
  // State 클래스 선언, 상태 앞에 _를 붙이는건 관례적 표현임
  @override
  void initState() {
    // state 초기화 단계이며 필수는 아님, 상태값에 대한 초기화를 해야 하는 경우 사용
    super.initState(); // 부모 클래스의 initState() 매서드를 함께 실행
  }

  int count = 0;

  void increase() {
    setState(() {
      // 상태값 변화 기능
      count += 1;
    });
  }

  void decrease() {
    setState(() {
      // 상태값 변화 기능
      count -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('count : $count', style: TextStyle(fontSize: 25)),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: decrease, child: Text('- minus')),
                ElevatedButton(onPressed: increase, child: Text('+ plus')),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // 사용된 위젯이 사라질 때 실행되는 단계, 사용하던 데이터 등을 정리해야 할 때 사용, 필수는 아님
    super.dispose();
  }
}
