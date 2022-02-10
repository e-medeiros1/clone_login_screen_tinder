import 'package:clone_tinder/tinder_button.dart';
import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ImageProvider _imageProvider;
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
                      // height: 1024,
                      height: 901,
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
                      padding: const EdgeInsets.only(bottom: 620),
                      child: Image.asset(
                        'assets/images/tinder_logo.png',
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        scale: 1.3,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'By clicking Log in, you agree with our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //Botão google

                          const TinderButton(
                            texto: 'LOG IN WITH GOOGLE',
                            imagem: AssetImage('assets/images/google.png'),
                            cor: Colors.black87,
                          ),

                          //Espaçador
                          const SizedBox(
                            height: 15,
                          ),
                          TinderButton(
                              texto: 'LOG IN WITH FACEBOOK',
                              imagem: const AssetImage(
                                  'assets/images/facebook.png'),
                              cor: Colors.blue.shade500),
                          //Espaçador
                          const SizedBox(
                            height: 15,
                          ),
                          //Botão número
                          const TinderButton(
                            texto: 'LOG IN WITH YOUR PHONE',
                            imagem: AssetImage('assets/images/chats.png'),
                            cor: Colors.black87,
                          ),
                          // Espaçador
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Trouble logging in?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
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
