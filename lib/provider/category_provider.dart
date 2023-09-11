import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:psxmotors/constant/api_uri.dart';

import '../model/category_model.dart';
import 'package:http/http.dart' as http;

class CategoryProvider extends ChangeNotifier {
  List<Category> _categories = [];
  List<Category> get category => _categories;

  Future<void> fetchCategory() async {
    final url = Uri.parse(Category_Url);

    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      var categoryData = jsonData;

      //if (categoryData != null && categoryData.isNotEmpty) {
      //categories = [Category.fromJson(categoryData[0])];
      categoryData.forEach((data) => _categories.add(Category.fromJson(data)));
      notifyListeners();
    } else {
      throw Exception("Failed to load Categories");
    }
  }
}
