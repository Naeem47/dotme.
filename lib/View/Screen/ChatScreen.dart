import 'package:dot_me/View/Screen/HomeScreen/SocailMeScreen.dart';
import 'package:dot_me/View/Utils/Widgets/ImagesWidget.dart';
import 'package:dot_me/View/Utils/Widgets/ReceivedMsg.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dot_me/View/Utils/Widgets/MyTextField.dart';
import 'package:dot_me/View/Utils/Widgets/SentMsg.dart';
import 'package:dot_me/View/Utils/Widgets/TextFieldMsg.dart';
import 'package:dot_me/View/Utils/Widgets/TextWidget.dart';
import 'package:dot_me/View/Utils/Widgets/ToggleSwitch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isActive = true;
    TextEditingController controllor = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(children: [
          const Header(title: 'Deine Chats'),
          const Divider(
            color: Color(0xffEFF1F3),
            thickness: 2,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 800,
                  width: 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: 'Personen oder Chats suchen',
                        fontsize: 16,
                        fontweight: FontWeight.w900,
                        fontcolor: Colors.black,
                      ),
                      10.verticalSpace,
                      MyTextField(
                          width: 340,
                          hintText: 'search',
                          prefixIcon: 'assets/settingicons.png',
                          controller: controllor),
                      10.verticalSpace,
                      Expanded(
                        child: ListView.builder(
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 70,
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48,
                                      width: 48,
                                      child: CircleAvatar(
                                        radius: 28,
                                        backgroundImage: AssetImage(
                                          'assets/profileperson.png',
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 6,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              MyText(
                                                text: 'User Name',
                                                fontsize: 16,
                                                fontweight: FontWeight.w900,
                                                fontcolor: Colors.black,
                                              ),
                                              2.horizontalSpace,
                                              MyText(
                                                text: '18.03.2023',
                                                fontsize: 10,
                                                fontweight: FontWeight.w500,
                                                fontcolor:
                                                    const Color(0xff858585),
                                              ),
                                            ]),
                                        MyText(
                                          text:
                                              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,\nsed diam nonumy eirmod tempor invidunt ut labore et...',
                                          fontsize: 12,
                                          fontweight: FontWeight.w500,
                                          fontcolor: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
                // chatroom
                Container(
                  height: 700,
                  width: 550,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 431,
                        width: 550,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const ReceivedChatBubble(),
                              const ReceivedChatBubble(),
                              Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: Text(
                                  'HEUTE',
                                  style: GoogleFonts.urbanist(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff858585),
                                  ),
                                ),
                              ),
                              const ReceivedChatBubble(),
                              const SentMessage(),
                              const SentMessage(),
                              const ReceivedChatBubble(),
                              const SentMessage(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 550,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/call.png'),
                            Image.asset('assets/videoCall.png'),
                            Image.asset('assets/attechFile.png'),
                            const TextFieldMsg(),
                            Image.asset('assets/sendMsg.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // details
                Container(
                  height: 700,
                  width: 310,
                  // color: Colors.orange.shade300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 240,
                          width: 300,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/faceWashPic.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          width: 300,
                          margin: const EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'User Name',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.urbanist(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              //
                              const TextWidget(
                                myText: 'E-mail-Adresse',
                              ),
                              const TextWidget2(
                                myText: 'mustermail@googlemail.com',
                              ),
                              const TextWidget(
                                myText: 'Telefonnummer',
                              ),
                              const TextWidget2(
                                myText: '0176 2666 23233',
                              ),
                              const TextWidget(
                                myText: 'Kontaktdaten',
                              ),
                              const TextWidget2(
                                myText:
                                    'Mustermann GmbH\nMusterstraße 1\n50259 Pulheim',
                              ),
                              // images
                              const SizedBox(height: 24),
                              const TextWidget(myText: 'Anhänge'),
                              //////////////////////
                              const SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ImagesWidget(),
                                    ImagesWidget(),
                                    ImagesWidget(),
                                    ImagesWidget(),
                                    ImagesWidget(),
                                    ImagesWidget(),
                                    ImagesWidget(),
                                    ImagesWidget(),
                                  ],
                                ),
                              ),

                              /////////////////////
                              const SizedBox(height: 40),
                              const TextWidget(myText: 'Einstellungen'),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Push-Nachrichten erhalten',
                                    style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                  ToggleSwitchWidget(
                                    getValue: isActive,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
