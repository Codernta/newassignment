import 'package:flutter/material.dart';
import 'package:newproject/AppWidgets.dart';
import 'package:line_icons/line_icons.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomePage',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 8),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: <Widget>[
            const MainAppBar(), //Welcome Note
            const SizedBox(height: 35),
            WelcomeNote(),
            const SizedBox(height: 20),
            MainButtonBar(),
            const SizedBox(height: 45),
            GestureDetector(
              child: AddWidget(),
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
            ),
            const SizedBox(height: 12),
            TextInstruction(),
            const SizedBox(height: 10),
            Visibility(
              visible: isVisible,
              child: Positioned(
                bottom: 0,
                top: 400,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 12, bottom: 12),
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Text('Aa',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Text',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(LineIcons.image,
                                size: 24, color: Colors.blue),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Image',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(LineIcons.camera,
                                size: 24, color: Colors.blue),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Camera',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(LineIcons.pdfFile,
                                size: 24, color: Colors.blue),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'PDF',
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
