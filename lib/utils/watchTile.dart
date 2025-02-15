import 'package:flutter/material.dart';
import 'package:mk_watchshop/utils/watch.dart';

class watchTile extends StatelessWidget {
  final Watch currWatch;
  const watchTile({super.key, required this.currWatch});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 330,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Container(height: 300, child: Image.asset(currWatch.imagePath)),
            SizedBox(
              height: 20,
            ),
            Text(
              currWatch.watchName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            Text(
              "\$ " + currWatch.watchPrice,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 15),
                  child: Text(
                    "Add to your Cart",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
