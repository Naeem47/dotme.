import 'package:flutter/material.dart';


class DrawerIconButton extends StatelessWidget {

  final String image ;
   Color? bgcolor;
   DrawerIconButton({
    required this.image,
    this.bgcolor =const  Color(0xffF3F3F3),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.all(8),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
                  color:   bgcolor,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: 
                  AssetImage(image,),scale: 2.5)

      
      ),
    );
  }
}