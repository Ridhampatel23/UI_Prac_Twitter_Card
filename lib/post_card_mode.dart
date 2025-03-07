import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCardModel extends StatelessWidget {
  const PostCardModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  style: const TextStyle().copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                )),
          ),
        ),
      ],
    );
  }
}
