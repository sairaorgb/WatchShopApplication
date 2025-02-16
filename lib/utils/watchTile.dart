import 'package:flutter/material.dart';
import 'package:mk_watchshop/utils/watch.dart';
import 'package:mk_watchshop/utils/watchProvider.dart';
import 'package:provider/provider.dart';

class watchTile extends StatelessWidget {
  final Watch currWatch;
  final int Index;
  const watchTile({super.key, required this.currWatch, required this.Index});

  @override
  Widget build(BuildContext context) {
    return Consumer<Watchprovider>(
      builder: (context, value, child) => Container(
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
                  child: Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        value.addToCart(Index);
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            content: Container(
                              height: 80,
                              width: 200,
                              child: Center(
                                child: Text(
                                  "Succesfully added to cart !!",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
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
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
