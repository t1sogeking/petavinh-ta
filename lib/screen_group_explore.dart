import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'components/items/group_list_item_horizontal.dart';
import 'components/items/group_list_item_vertical.dart';

class GroupExploreScreen extends StatefulWidget {
  const GroupExploreScreen({super.key});

  @override
  _GroupExploreScreenState createState() => _GroupExploreScreenState();
}

class _GroupExploreScreenState extends State<GroupExploreScreen> {
  int _selectedButtonIndex = 0;

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  Widget _buttonstate(int index, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          backgroundColor:
              _selectedButtonIndex == index ? Colors.orange : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(color: Colors.orange),
          ),
        ),
        onPressed: () => _onButtonPressed(index),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Fredoka-Regular',
            color: _selectedButtonIndex == index ? Colors.white : Colors.orange,
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  @override
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
          title: const Text(
            "Group",
            style: TextStyle(
              fontFamily: 'Fredoka-Bold',
              fontSize: 15,
            ),
          ),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    GroupListItemHorizontal(),
                    Gap(10),
                    GroupListItemHorizontal(),
                    Gap(10),
                    GroupListItemHorizontal(),
                    Gap(10),
                    GroupListItemHorizontal(),
                    Gap(10),
                    GroupListItemHorizontal(),
                    Gap(10),
                    GroupListItemHorizontal(),
                    Gap(10),
                  ],
                ),
              ),

              const Gap(20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: _buttonstate(0, 'Explore \n more groups'),
                    ),
                    Expanded(
                      child: _buttonstate(1, 'Your groups'),
                    ),
                    Expanded(
                      child: _buttonstate(2, 'Recommended \n Posts'),
                    ),
                  ],
                ),
              ),
              const Gap(20),

              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
              const GroupListItemVertical(),
            ],
          ),
        ),
        // body: Padding(
        //   padding: const EdgeInsets.only(left: 10),
        //   child: ListView(
        //     children: [
        //       Text('Adu ang seng'),
        //       Row(
        //         children: [
        //           Expanded(
        //             child: TextButton(
        //               style: TextButton.styleFrom(
        //                 backgroundColor: Colors.orange,
        //                 shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(5),
        //                 ),
        //               ),
        //               onPressed: () {},
        //               child: const Text(
        //                 "Explore more groups",
        //                 style: TextStyle(
        //                   fontFamily: 'Fredoka-Regular',
        //                   color: Colors.white,
        //                   fontSize: 9,
        //                 ),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               style: TextButton.styleFrom(
        //                 backgroundColor: Colors.orange,
        //                 shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(5),
        //                 ),
        //               ),
        //               onPressed: () {},
        //               child: const Text(
        //                 "Your group",
        //                 style: TextStyle(
        //                   fontFamily: 'Fredoka-Regular',
        //                   color: Colors.white,
        //                   fontSize: 9,
        //                 ),
        //               ),
        //             ),
        //           ),
        //           Expanded(
        //             child: TextButton(
        //               style: TextButton.styleFrom(
        //                 backgroundColor: Colors.orange,
        //                 shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(5),
        //                 ),
        //               ),
        //               onPressed: () {},
        //               child: const Text(
        //                 "Recommended posts",
        //                 style: TextStyle(
        //                   fontFamily: 'Fredoka-Regular',
        //                   color: Colors.white,
        //                   fontSize: 9,
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //       Text('Adu ang seng'),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
