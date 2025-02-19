import 'package:flutter/material.dart';
import 'package:mk_watchshop/utils/watchProvider.dart';
import 'package:mk_watchshop/utils/watchTile.dart';
import 'package:provider/provider.dart';

class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Watchprovider>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hot Watches",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.watchList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: watchTile(
                      currWatch: value.watchList[index],
                      Index: index,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
