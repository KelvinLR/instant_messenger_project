import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instant_messenger_project/theme/design_system.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.sizeOf(context).width;
    final double deviceHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF8AFFE8),
              Colors.white,
              Colors.white,
              Color(0xFF8AFFE8),
            ],
            stops: [0, 0.21, 0.76, 1.00],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: deviceHeight * (47 / 874),
                left: deviceWidth * (13 / 402),
              ),
              child: Row(
                spacing: deviceWidth * (13 / 402),
                children: [
                  SvgPicture.asset(
                    InstantMessengerIllustrations.availableMedium,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [Text('Kelvin'), Text('como estou me sentindo')],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: deviceHeight * (13 / 874),
                left: deviceWidth * (13 / 402),
                right: deviceWidth * (13 / 402),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: deviceWidth * (273 / 402),
                        height: deviceHeight * (41 / 874),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF8AFFE8).withValues(alpha: 0.43),
                              Colors.transparent,
                              Colors.transparent,
                              Color(0xFF8AFFE8).withValues(alpha: 0.43),
                            ],
                            stops: [0.0, 0.01, 0.99, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                      Container(
                        width: deviceWidth * (273 / 402),
                        height: deviceHeight * (41 / 874),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF8AFFE8).withValues(alpha: 0.43),
                              Colors.transparent,
                              Colors.transparent,
                              Color(0xFF8AFFE8).withValues(alpha: 0.43),
                            ],
                            stops: [0.0, 0.06, 0.94, 1.0],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      // Conteúdo do container
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: deviceWidth * (273 / 402),
                          height: deviceHeight * (41 / 874),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.22),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: deviceWidth * (15 / 402)),
                              Expanded(
                                child: Center(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Pesquisar mensagem ou contato",
                                      hintStyle: TextStyle(
                                        color: Color(
                                          0xFF44BAA2,
                                        ).withValues(alpha: 0.60),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.only(
                                        bottom: deviceHeight * 12 / 874,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  right: deviceWidth * (9 / 402),
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: Color(
                                    0xFF44BAA2,
                                  ).withValues(alpha: 0.60),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    spacing: deviceWidth * (9 / 402),
                    children: [
                      SizedBox.square(
                        dimension: deviceWidth * (24 / 402),
                        child: Image.asset(
                          InstantMessengerIllustrations.inviteFriend,
                        ),
                      ),
                      SizedBox.square(
                        dimension: deviceWidth * (24 / 402),
                        child: Image.asset(
                          InstantMessengerIllustrations.settings,
                        ),
                      ),
                      SizedBox.square(
                        dimension: deviceWidth * (24 / 402),
                        child: Image.asset(
                          InstantMessengerIllustrations.exitMsn,
                        ),
                      ),
                    ],
                  ),

                  /*GestureDetector(),
                  GestureDetector(),
                  GestureDetector(),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
