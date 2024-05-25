import 'package:flutter/material.dart';

class GroupListItemHorizontal extends StatelessWidget {
  const GroupListItemHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        width: 100,
        height: 100,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/ai-generated-a-puppy-is-sitting-on-the-street-photo.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                // decoration: BoxDecoration(
                //   gradient: LinearGradient(
                //     colors: [
                //       Colors.black.withOpacity(0.0),
                //       Colors.black.withOpacity(0.3),
                //       Colors.black.withOpacity(0.5),
                //       Colors.black,
                //       Colors.black.withOpacity(0.5),
                //       Colors.black.withOpacity(0.3),
                //       Colors.black.withOpacity(0.0),
                //     ],
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter,
                //   ),
                // ),
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'jalksjdfhklajsdhfksdflj',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Fredoka-Regular',
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
