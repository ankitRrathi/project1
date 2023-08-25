import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double width1 = 200.0;
  double height1 = 100.0;
  var bgcolor =Colors.pink;
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ANIMATED CONTAINER"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder<double>(
              duration: Duration(seconds: 2),
              tween: Tween<double>(begin: width1, end: width1),
              builder: (_, value, child) {
                return Container(
                  width: value,
                  height: height1,
                  color: Colors.green,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    width1 = 100.0;
                    height1 = 200.0;
                    bgcolor= Colors.red;
                    flag = false;
                  } else {
                    width1 = 200.0;
                    height1 = 100.0;
                    bgcolor = Colors.grey;
                    flag = true;
                  }
                });
              },
              child: Text('Change'),
            )
          ],
        ),
      ),
    );
  }
}
