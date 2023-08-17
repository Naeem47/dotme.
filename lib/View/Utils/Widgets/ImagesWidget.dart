import 'package:flutter/material.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, top: 8),
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/faceWashPic.png'))),
      ),
    );
  }
}
