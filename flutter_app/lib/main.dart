import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); 
}
class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CountNToggleView(),
    );
  }
}

class CountNToggleView extends StatefulWidget {
  @override
  CounterNImgToggleSS createState() => CounterNImgToggleSS();
}

class CounterNImgToggleSS extends State<CountNToggleView> {
  int cnt = 0;
  bool firstImg = true;

  void toggle() {
    setState(() {
      firstImg = !firstImg;
    });
  }

     void incCnt() {
    setState(() {
      cnt++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CW 1: Toggler'),
      ),
      body: Padding(
        padding:  EdgeInsets.all(42.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $cnt',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('<= Increment Counter =>'),
              onPressed: incCnt,
            ),
            const SizedBox(height: 35),
            Image.asset(
              firstImg ? 'images/appel.jpg' : 'images/baenana.jpg', 
              height: 210,
            ),
            const SizedBox(height: 24.2),
            ElevatedButton(
              child:  Text('Toggle'),
              onPressed: toggle,
            ),
          ],
        ),
      ),
    );
  }
}
