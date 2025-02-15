import 'package:flutter/material.dart';
import 'package:mk_watchshop/pages/homePage.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 300,
                child: Image.asset(
                  'assets/images/fastrack.png',
                  fit: BoxFit.cover,
                )),
            Text(
              'Move on',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                Text(
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  "Whether you're chasing trends or setting them, Fastrack blends innovation with attitude, ensuring you stay ahead of time in both fashion and function.",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        )),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8)),
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "Shop Now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
