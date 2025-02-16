import 'package:flutter/material.dart';
import 'package:mk_watchshop/utils/watch.dart';
import 'package:mk_watchshop/utils/watchProvider.dart';
import 'package:provider/provider.dart';

class Carttile extends StatelessWidget {
  final Watch cartwatch;
  const Carttile({super.key, required this.cartwatch});

  @override
  Widget build(BuildContext context) {
    return Consumer<Watchprovider>(
      builder: (context, value, child) => Container(
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            leading: Image.asset(cartwatch.imagePath),
            title: Text(cartwatch.watchName),
            subtitle: Text("\$ " + cartwatch.watchPrice),
            trailing: IconButton(
                onPressed: () => value.removeFromCart(cartwatch),
                icon: Icon(Icons.delete)),
          )),
    );
  }
}
