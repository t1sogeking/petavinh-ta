import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class ApproveScreen extends StatefulWidget {
  const ApproveScreen({super.key});

  @override
  _ApproveScreenState createState() => _ApproveScreenState();
}

class _ApproveScreenState extends State<ApproveScreen> {
  int _selectedButtonIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  Widget _buttonstate(int index, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          backgroundColor:
              _selectedButtonIndex == index ? Colors.lightBlueAccent : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: Colors.lightBlueAccent),
          ),
        ),
        onPressed: () => _onButtonPressed(index),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Fredoka-Regular',
            color: _selectedButtonIndex == index ? Colors.white : Colors.lightBlueAccent,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(FontAwesomeIcons.xmark),
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const CustomScreen(),
              //   ),
              // );
            },
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
                'assets/images/ai-generated-a-puppy-is-sitting-on-the-street-photo.jpg'),
            const Gap(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The social people in other country",
                    style: TextStyle(
                      fontFamily: 'Fredoka-Bold',
                      fontSize: 20,
                    ),
                  ),
                  Gap(5),
                  Row(
                    children: [
                      Expanded(
                        child: _buttonstate(0, 'Members'),
                      ),
                      const Gap(20),
                      Expanded(
                        child: _buttonstate(1, 'Posts'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
