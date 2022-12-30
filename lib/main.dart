import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        body: const MyStatefulWidget(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/cb.png',
                  width: 70,
                  height: 70,
                ),
                Image.asset(
                  'assets/cb1.png',
                  width: 80,
                  height: 40,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(30),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(7),
                child: const Text(
                  'How many team members are you looking for?',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.w700,
                      fontSize: 33),
                )),
            Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, // Background color
                  ),
                  child: const Text('2'),
                  onPressed: () {
                    //details of 2 members
                  },
                )),
            Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, // Background color
                  ),
                  child: const Text('3'),
                  onPressed: () {
                    //details of 3 members
                  },
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.pinkAccent),
                controller: nameController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.white),
                    ),
                    labelText: 'Other Prefrences ',
                    labelStyle: TextStyle(
                      color: Colors.pink,
                    )),
              ),
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink, // Background color
                ),
                child: const Text('NEXT'),
                onPressed: () {
                  // next page page 8
                  // );
                },
              ),
            ),

          ],
        ));
  }
}
