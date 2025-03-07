import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainContainerWithNameAndLogo extends StatelessWidget {
  const MainContainerWithNameAndLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // Main header Container

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Profile Picture
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red),
            ),

            // Name and Profile
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Name and verified check
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Ridham Patel'),
                    const SizedBox(width: 5),
                    Icon(Icons.heart_broken)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    const Text('@Rid23 |'),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(-5)),
                      onPressed: () {},
                      child: Text(
                        'Follow',
                        style: TextStyle().copyWith(color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),

        const Icon(Icons.close, color: Colors.blue, size: 40),
      ],
    );
  }
}
