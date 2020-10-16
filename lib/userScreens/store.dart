import 'package:flutter/material.dart';
import 'package:vendu/userScreens/itemdetails.dart';

class Store {
  String itemName;
  double itemPrice;
  String itemImage;

  Store.items({this.itemName, this.itemImage, this.itemPrice});
}

List<Store> storeItems = [
  Store.items(
      itemName: 'Pink Can',
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/77AUhb"),
  Store.items(
      itemName: 'Black Strip white',
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/77AUhb"),
  Store.items(
      itemName: 'Yellow Can',
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/77AUhb"),
  Store.items(
      itemName: 'Pink Can',
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/77AUhb"),
  Store.items(
      itemName: 'Black Strip white',
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/77AUhb"),
  Store.items(
      itemName: 'Yellow Can',
      itemPrice: 2500.00,
      itemImage: "https://goo.gl/77AUhb")
];
