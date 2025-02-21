import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TwitterCardScreen extends StatelessWidget {
  const TwitterCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.1,
          right: screenWidth * 0.1,
          top: 50.0,
          bottom: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header card with X logo
              const MainContainerWithNameAndLogo(),
              const SizedBox(height: 10),

              const Text("Did You Know?"),

              const SizedBox(height: 25),

              const Text(
                  'When you call `MediaQuery.of(context)` inside a build method, the widget will rebuild when *any* of the MediaQuery properties change.'),

              const SizedBox(height: 25),

              const Text(
                  'When you call `MediaQuery.of(context)` inside a build method, the widget will rebuild when *any* of the MediaQuery properties change.'),

              const SizedBox(height: 25),

              Stack(
                clipBehavior: Clip.none, // Ensures nothing is clipped
                children: [
                  // Outer Container (Background)
                  Container(
                    height: 600,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[900],
                    ),
                  ),

                  // Inner Container (Foreground, appears above)
                  Positioned(
                    top: 20,
                    // Adjust to move it out of the parent box if needed
                    left: 20,
                    // Adjust horizontal positioning
                    right: 20,
                    child: Container(
                      height: 100,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueGrey[900],
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5, // Adds shadow for depth
                            spreadRadius: 2,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                          child: Text(
                        'MediaQuery as an Inherited Model',
                        textAlign: TextAlign.center,
                        style: TextStyle().copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      )),
                    ),
                  ),
                ],
              ),

              Text('10:21 AM'),
              Divider(color: CupertinoColors.inactiveGray),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.reddit),
                  Icon(Icons.chat),
                  Icon(Icons.link)
                ],
              ),

              SizedBox(height: 10),

              SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: Text('Read 12 replies', style: TextStyle().copyWith(color: Colors.blue),)))
            ],
          ),
        ),

      ),
    );
  }
}

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
