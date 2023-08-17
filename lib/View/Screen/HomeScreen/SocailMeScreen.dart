import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/compunents/DrawerIconButton.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocailScreen extends StatelessWidget {
  const SocailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Header(title: 'Social'),
              const Divider(
                color: Color(0xffEFF1F3),
                thickness: 2,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Grid View part of app

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          10.verticalSpace,
                          MyText(
                            text: 'Dein Feedback',
                            fontsize: 25,
                            fontweight: FontWeight.w900,
                            fontcolor: Colors.black,
                          ),
                          10.verticalSpace,
                          const Gridview(),
                        ],
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22),
                      child: VerticalDivider(
                        color: Color(0xffEFF1F3),
                        thickness: 2,
                      ),
                    ),

                    //Beitragsname part of app

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.verticalSpace,
                        MyText(
                          text: 'Beitragsname',
                          fontsize: 25,
                          fontweight: FontWeight.w900,
                          fontcolor: Colors.black,
                        ),
                        10.verticalSpace,
                        CenterPart(),
                      ],
                    ),

                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22),
                      child: VerticalDivider(
                        color: Color(0xffEFF1F3),
                        thickness: 2,
                      ),
                    ),

                    //Beitragsname part of app
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          10.verticalSpace,
                          MyText(
                            text: 'Dein Feedback',
                            fontsize: 25,
                            fontweight: FontWeight.w900,
                            fontcolor: Colors.black,
                          ),
                          LastPart(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String title;
  const Header({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
      child: Row(
        children: [
          MyText(
            text: title,
            fontsize: 39,
            fontweight: FontWeight.w900,
            fontcolor: Colors.black,
          ),
          Spacer(),
          Container(
            height: 48,
            width: 230,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(99)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  text: 'Neues Package erstellen',
                  fontsize: 16,
                  fontweight: FontWeight.w500,
                  fontcolor: Colors.white,
                ),
                const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          DrawerIconButton(
            bgcolor: Colors.black,
            image: 'assets/filtericon.png',
          ),
          DrawerIconButton(
            bgcolor: Colors.black,
            image: 'assets/whitesettingicon.png',
          ),
        ],
      ),
    );
  }
}

class LastPart extends StatelessWidget {
  const LastPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                height: 165,
                margin: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    color: Color(0xffF3F3F3),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/profileperson.png',
                          height: 24,
                          width: 24,
                        ),
                        3.horizontalSpace,
                        MyText(text: 'Lara Köster'),
                        Spacer(),
                        Row(
                          children: List.generate(5, (index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.black,
                              size: 18,
                            );
                          }),
                        ),
                      ],
                    ),
                    12.verticalSpace,
                    MyText(
                        text:
                            'This is my first time trying the service, but the results are very satisfying! I\nrealy realy realy love it soooooo much! ❤️❤️❤️'),
                    6.verticalSpace,
                    MyText(text: '1 Month ago'),
                    12.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/likeicons.png',
                              height: 24,
                              width: 24,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: MyText(text: '933'),
                            ),
                            Image.asset(
                              'assets/commentsicon.png',
                              height: 24,
                              width: 24,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: MyText(text: '23'),
                            ),
                            Image.asset(
                              'assets/bookmarkicon.png',
                              height: 24,
                              width: 24,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: MyText(text: '812'),
                            ),
                          ],
                        ),
                        Container(
                          height: 20,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 18,
                              ),
                              2.horizontalSpace,
                              MyText(
                                text: 'REAGIEREN',
                                fontsize: 10,
                                fontweight: FontWeight.w900,
                                fontcolor: Colors.white,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}

class CenterPart extends StatelessWidget {
  const CenterPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: 360,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage('assets/boypic.png'), fit: BoxFit.cover)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DrawerIconButton(
                    bgcolor: Colors.black,
                    image: 'assets/greatlikeicon.png',
                  ),
                  MyText(
                    text: '12,9K',
                    fontsize: 10,
                    fontweight: FontWeight.w400,
                    fontcolor: Colors.white,
                  ),
                ],
              ),
            );
          })),
    );
  }
}

class Gridview extends StatelessWidget {
  const Gridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: 24,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                  image: const DecorationImage(
                      image: AssetImage('assets/boypic.png'),
                      fit: BoxFit.cover)),
            );
          }),
    );
  }
}
