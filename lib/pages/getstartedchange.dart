import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class GetStarted extends StatelessWidget {
  const GetStarted(this.nextscreen, {super.key});
  final void Function() nextscreen;
  void loginscreen() {}
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // method 1 to make the image transparent (heavy to use).

        /*Opacity(
          opacity: 0.5,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
          ),
        ),*/

        // method 2 memory friendly

        Image.asset(
          'lib/images/dineease.png',
          width: 200, /* color: const Color.fromARGB(153, 253, 251, 251)*/
        ),
        const SizedBox(height: 30),
        const Text(
          '" Streamlining Restaurant Operations',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontFamily: 'Satisfy'),
        ),
        const Text(
          'with technology "',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontFamily: 'Satisfy'),
        ),

        const SizedBox(height: 20),

        ElevatedButton.icon(
            onPressed: nextscreen,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 1, 69, 94),
              foregroundColor: const Color.fromARGB(255, 254, 254, 254),
            ),
            icon: const Icon(Icons.arrow_right_alt_sharp),
            // use label instead of child as we have used ElevatedButton.icon.
            label: const Text(
              'Dine Ease',
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }
}
