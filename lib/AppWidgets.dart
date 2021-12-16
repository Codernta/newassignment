import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:line_icons/line_icons.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25, top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print('Drawer Button Clicked');
            },
            child: Image.asset('images/icon.png', height: 20, width: 20),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: 1, // Space between underline and text
            ),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              width: 3.0, // Underline thickness
            ))),
            child: Text(
              "DocTunes",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('images/profile.webp'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Hi Abhimanyu!',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Good Morning',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class MainButtonBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: Container(
        padding: EdgeInsets.only(right: 35),
        height: 35,
        decoration: BoxDecoration(
            color: Color(0XFFBBDEFB),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              child: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                shape: StadiumBorder(),
                fixedSize: const Size(120, 80),
              ),
              onPressed: () {
                print('Home Button Pressed');
              },
            ),
            const Text(
              'Recents',
              style: TextStyle(color: Colors.blue),
            ),
            const SizedBox(width: 5),
            const Text(
              'Settings',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class AddWidget extends StatefulWidget {
  @override
  AddWidgetState createState() => AddWidgetState();
}

class AddWidgetState extends State<AddWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
          border: Border.all(color: Color(0XFFBBDEFB), width: 5.0)),
      child: Icon(
        LineIcons.plus,
        size: 150.0,
        color: Colors.white,
      ),
    );
  }
}

class TextInstruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Center(
          child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: <TextSpan>[
          const TextSpan(
              text: "Tap on the ", style: TextStyle(color: Colors.black87)),
          TextSpan(
              text: " + ",
              style: TextStyle(
                color: Colors.blue[200],
              )),
          const TextSpan(
              text: "icon to \n browse files on your phone ",
              style: TextStyle(color: Colors.black87)),
        ]),
      )),
    );
  }
}
