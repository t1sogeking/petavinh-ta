import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class GroupListItemVertical extends StatelessWidget {
  const GroupListItemVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 5),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/ai-generated-a-puppy-is-sitting-on-the-street-photo.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(5),
          Container(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nhom nay co name la ngu vai l',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '100000 members',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem<String>(
                child: Container(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        height: 100,
                        padding: EdgeInsets.all(0),
                        child: Image.asset(
                          'assets/images/ai-generated-a-puppy-is-sitting-on-the-street-photo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Gap(10),
                      SizedBox(
                        width: 300,
                        height: 30,
                        child: Text(
                          'Nhom nay co ten la ngu vai l',
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 170,
                        child: Text(
                          'Group Description',
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            child: Icon(
              FontAwesomeIcons.circleInfo,
              size: 20,
            ),
          ),
          Gap(10),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(0),
            ),
            child: Text('Request'),
          ),
        ],
      ),
    );
  }
}
