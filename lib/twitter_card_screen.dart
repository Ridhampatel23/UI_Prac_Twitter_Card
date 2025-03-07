import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:twitter_embedded/post_card_mode.dart';

import 'main_header.dart';

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
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
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
          
                PostCardModel(),
          
                Text('10:21 AM'),
                Divider(color: CupertinoColors.inactiveGray),
          
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

      ),
    );
  }
}


