import 'package:flutter/material.dart';
import 'package:mk_watchshop/utils/watch.dart';

class Watchprovider extends ChangeNotifier {
  List<Watch> watchList = [
    Watch(
        imagePath: "assets/images/Dezire.webp",
        watchName: "Dezire Fastrack",
        watchPrice: "1242"),
    Watch(
        imagePath: "assets/images/Kronos.webp",
        watchName: "Kronos Fastrack",
        watchPrice: "540"),
    Watch(
        imagePath: "assets/images/Kruz.webp",
        watchName: "Kruz",
        watchPrice: "378"),
    Watch(
        imagePath: "assets/images/Stunners.webp",
        watchName: "Stunners",
        watchPrice: "345"),
  ];
  List<Watch> userCart = [];

  void addToCart(int index) {
    userCart.add(watchList[index]);
    notifyListeners();
  }

  void removeFromCart(Watch watch) {
    userCart.remove(watch);
    notifyListeners();
  }
}
