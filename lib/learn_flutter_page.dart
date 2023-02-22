import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool _isSwitch = false;
  bool _isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Actions");
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/einstein.jpg',
              height: 300,
              width: 500,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Text",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _isSwitch ? Colors.blue : Colors.green,
                ),
                onPressed: () {
                  debugPrint("Elevated button");
                },
                child: const Text("Elevated button")),
            OutlinedButton(
                onPressed: () {
                  debugPrint("Outlined button");
                },
                child: const Text("Outlined button")),
            TextButton(
                onPressed: () {
                  debugPrint("Text button");
                },
                child: const Text("Text button")),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is the row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text("Row widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Switch(
                value: _isSwitch,
                onChanged: (bool value) {
                  setState(() {
                    _isSwitch = value;
                  });
                }),
            Checkbox(
                value: _isCheck,
                onChanged: (bool? value) {
                  setState(() {
                    _isCheck = value!;
                  });
                }),
            Image.network(
                "https://www.yourtango.com/sites/default/files/styles/header_slider/public/image_blog/AlbertEinsteinQuotes.jpg?itok=1-FeiZww")
          ],
        ),
      ),
    );
  }
}
