import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class GroupInsideScreen extends StatelessWidget {
  const GroupInsideScreen({super.key});

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
        ),
        body: ListView(
          children: [
            Image.asset(
                'assets/images/ai-generated-a-puppy-is-sitting-on-the-street-photo.jpg'),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: [
                  const Column(
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
                          Icon(
                            FontAwesomeIcons.userGroup,
                            size: 15,
                            color: Colors.grey,
                          ),
                          Gap(10),
                          Text(
                            '500 members',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Gap(10),
                  GestureDetector(   
                    onTap: (){},                 
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEDF2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Row(
                        children: [
                          //Avatar
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/ai-generated-a-puppy-is-sitting-on-the-street-photo.jpg',
                              ),
                              radius: 5,
                            ),
                          ),
                          Gap(5),
                          //Text
                          Text("What da dog doin' ?"),
                          Spacer(),
                          Icon(FontAwesomeIcons.image),
                        ],
                      ),
                    ),
                  ),
                  const Gap(20),
                  TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                      prefixIcon: GestureDetector(
                        child: const SizedBox(
                          width: 30,
                          height: 30,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/ai-generated-a-puppy-is-sitting-on-the-street-photo.jpg',
                            ),
                            radius: 5,
                          ),
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        maxHeight: 30,
                        maxWidth: 30,
                        minHeight: 30,
                        minWidth: 30,
                      ),
                      suffixIcon: const Icon(FontAwesomeIcons.image),
                      hintText: "What da dog doin'?",
                      hintStyle: const TextStyle(
                        fontFamily: 'Fredoka-Regular',
                      ),
                      fillColor: const Color(0xFFEEEDF2),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                    ),
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
