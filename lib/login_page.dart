import 'package:clone_tinder/tinder_button.dart';
import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  final ImageIcon image;

  const Teste({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    //Gradiente

                    Container(
                      // margin: const EdgeInsets.all(10),
                      // padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      height: 900,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.red.shade400,
                            Colors.pink,
                            Colors.pinkAccent.shade400,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 600),
                      child: Image.asset(
                        'assets/images/tinder_logo.png',
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        scale: 1.2,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'By clicking Log in, you agree with our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //Botão google
                          TinderButton(
                            margem: EdgeInsets.only(left: 68),
                            // icone: Icons.g_mobiledata,
                            texto: 'LOG IN WITH GOOGLE',
                             
 ),
                        
                          //Espaçador
                          SizedBox(
                            height: 15,
                          ),
                          TinderButton(
                            margem: EdgeInsets.only(left: 58),
                            // icone: Icons.g_mobiledata,
                            texto: 'LOG IN WITH FACEBOOK',
                          ),
                          //Espaçador
                          SizedBox(
                            height: 15,
                          ),
                          //Botão número
                          TinderButton(
                            margem: EdgeInsets.only(left: 46),
                            // icone: ImageIcon(
                            //   AssetImage('assets/images/google_logo.png'),
                            // ),
                            texto: 'LOG IN WITH PHONE NUMBER',
                          ),
                          // Espaçador
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Trouble logging in?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
