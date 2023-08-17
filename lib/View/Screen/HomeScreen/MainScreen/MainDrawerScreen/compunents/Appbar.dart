import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/compunents/DrawerIconButton.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dot_me/View/Utils/Widgets/MyTextField.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController searchcontrollor = TextEditingController();
    return Container(
      height: 70,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image.asset(''),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'assets/dotmelogotext.png',
                scale: 3,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Center(
                child: MyTextField(
                    radius: 100,
                    borderColor: Colors.transparent,
                    width: 250,
                    backColor: Colors.grey.withOpacity(0.1),
                    hintText: 'Suche',
                    labeltext: 'Suche',
                    prefixIcon: 'assets/personicon.png',
                    controller: searchcontrollor,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    )),
              ),
            ),

            DrawerIconButton(
              image: 'assets/bellicon.png',
            ),
            DrawerIconButton(
              image: 'assets/settingicons.png',
            ),

            Container(
              margin: EdgeInsets.only(right: 10),
              height: 52,
              width: 52,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/ProfilePerson.png'),
                      fit: BoxFit.fill)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text: 'User Name',
                  fontsize: 16,
                  fontweight: FontWeight.w900,
                  fontcolor: Colors.black,
                ),
                MyText(
                  text: 'Geschäftsführer',
                  fontsize: 10,
                  fontweight: FontWeight.w400,
                  fontcolor: Color(0xff3B3B3B),
                )
              ],
            ),
            const SizedBox(
              width: 18,
            )
          ],
        ),
      ),
    );
  }
}
