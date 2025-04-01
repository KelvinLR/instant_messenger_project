import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              SizedBox(
                width: 350,
                height: 300,
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: deviceWidth * (371 / 402),
                          height: deviceHeight * (41 / 874),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.22),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: deviceWidth * (15 / 402)),
                              Expanded(
                                child: Center(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "E-mail ou usuário",
                                      hintStyle: TextStyle(
                                        color: Color(
                                          0xFF44BAA2,
                                        ).withValues(alpha: 0.60),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.only(
                                        //top: deviceHeight * (12/874),
                                        bottom: deviceHeight * (12 / 874),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: deviceWidth * (371 / 402),
                          height: deviceHeight * (41 / 874),
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF).withValues(alpha: 0.22),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: deviceWidth * (15 / 402)),
                              Expanded(
                                child: Center(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Senha",
                                      hintStyle: TextStyle(
                                        color: Color(
                                          0xFF44BAA2,
                                        ).withValues(alpha: 0.60),
                                        fontSize: 12,
                                      ),
                                      contentPadding: EdgeInsets.only(
                                        //top: deviceHeight * (12/874),
                                        bottom: deviceHeight * (12 / 874),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        Text('Lembrar senha'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        Text('Login automático'),
                      ],
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
