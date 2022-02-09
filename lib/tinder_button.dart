import 'package:flutter/material.dart';

class TinderButton extends StatelessWidget {
  final String texto;
  final ButtonStyle? estilo;
  final IconData? icone;
  final EdgeInsets? margem;

  const TinderButton(
      {Key? key, required this.texto, this.estilo, this.icone, this.margem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //Estilo do botão
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(2),
        overlayColor: MaterialStateProperty.all(Colors.black12),
        shadowColor: MaterialStateProperty.all(Colors.pink.shade50),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        fixedSize: MaterialStateProperty.all(const Size(500, 62)),
      ),
      //Clicável
      onPressed: () => {},
      // padding: const EdgeInsets.all(0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Icon(
              icone,
              color: Colors.black87,
              size: 27,
            ),
          ),
          Container(
              margin: margem,
              child: Text(
                texto,
                style: const TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 19.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
