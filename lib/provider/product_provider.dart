import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:psxmotors/constant/api_uri.dart';
import 'dart:convert';

import '../model/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  Future<void> fetchProduct() async {
    final url = Uri.parse(Product_Url);

    final response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      var productData = jsonData['products'];

      // if (productData != null && productData.isNotEmpty) {
      productData.forEach((data) => _products.add(Product.fromJson(data)));

      notifyListeners();
      // }
    } else {
      throw Exception('Failed to load products');
    }
  }
}
