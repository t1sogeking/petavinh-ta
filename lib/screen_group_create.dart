import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class GroupCreateScreen extends StatelessWidget {
  const GroupCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //Appbar
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
            "Create new group",
            style: TextStyle(
              fontFamily: 'Fredoka-Bold',
              fontSize: 15,
            ),
          ),
          centerTitle: true,
        ),

        //Body
        body: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Group name
              const Text(
                "Name",
                style: TextStyle(
                  fontFamily: 'Fredoka-Regular',
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Group name',
                  hintStyle: const TextStyle(
                    fontFamily: 'Fredoka-Regular',
                  ),
                  fillColor: const Color(0xFFEEEDF2),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                ),
              ),

              //Description
              const Gap(20),
              const Text(
                "Description",
                style: TextStyle(
                    fontFamily: 'Fredoka-Regular', fontWeight: FontWeight.bold),
              ),
              TextFormField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "What's your group about?",
                  hintStyle: const TextStyle(
                    fontFamily: 'Fredoka-Regular',
                  ),
                  fillColor: const Color(0xFFEEEDF2),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              ///Rules
              const Gap(20),
              const Text(
                "Rules",
                style: TextStyle(
                  fontFamily: 'Fredoka-Regular',
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Rules',
                  hintStyle: const TextStyle(
                    fontFamily: 'Fredoka-Regular',
                  ),
                  fillColor: const Color(0xFFEEEDF2),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
                maxLines: null,
              ),

              //Group Image
              const Gap(20),
              const Text(
                "Group Image",
                style: TextStyle(
                  fontFamily: 'Fredoka-Regular',
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFFEEEDF2),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.image,
                      color: Colors.green,
                    ),
                    Gap(20),
                    Text(
                      'Choose images ...',
                      style: TextStyle(
                        fontFamily: 'Fredoka-Regular',
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              //CreateButton
              const Gap(20),
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Create",
                      style: TextStyle(
                        fontFamily: 'Fredoka-Regular',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
