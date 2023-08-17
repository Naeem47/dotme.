import 'package:dot_me/View/Screen/HomeScreen/SocailMeScreen.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dot_me/View/Utils/dummayfiles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientsPage extends StatefulWidget {
  const ClientsPage({super.key});

  @override
  State<ClientsPage> createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              const Header(title: 'Deine Chats'),
              
                  Container(
                    height: 700,
                    // width: 400,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(text: "Mitarbeiter"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: List.generate(
                                          20,
                                          (index) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5.0),
                                            child: Row(
                                              children: [
                                                const CircleAvatar(
                                                  radius: 9,
                                                  backgroundImage: AssetImage(
                                                      "assets/profileperson.png"),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                MyText(
                                                  text: names[index],
                                                  fontsize: 15,
                                                  fontweight: FontWeight.w400,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    MyText(text: "Email- Address"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          20,
                                          (index) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5.0),
                                            child: MyText(
                                              text: emailAddresses[index],
                                              fontsize: 15,
                                              fontweight: FontWeight.w400,
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(text: "telefon"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          20,
                                          (index) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5.0),
                                            child: MyText(
                                              text: phoneNumbers[index],
                                              fontsize: 15,
                                              fontweight: FontWeight.w400,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(text: "Geschlet"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          20,
                                          (index) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5.0),
                                            child: MyText(
                                              text: "Manalich",
                                              fontsize: 15,
                                              fontweight: FontWeight.w400,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(text: "Alter"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          20,
                                          (index) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5.0),
                                            child: MyText(
                                              text: "31 jhale",
                                              fontsize: 15,
                                              fontweight: FontWeight.w400,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(text: "Geburstadam"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          20,
                                          (index) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5.0),
                                            child: MyText(
                                              text: stringDates[index],
                                              fontsize: 15,
                                              fontweight: FontWeight.w400,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                                
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(text: "Address"),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: List.generate(
                                          20,
                                          (index) => Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5.0),
                                            child: MyText(
                                              text: addresses[index],
                                              fontsize: 15,
                                              fontweight: FontWeight.w400,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                                
                                  ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                
          ],
        
        ),
      ),
    );
  }
}