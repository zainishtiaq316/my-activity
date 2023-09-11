/*import 'dart:convert';
//import 'dart:html';
import 'package:http/http.dart' as http;
import 'package:psxmotors/model/productmodel.dart';

class ProductServices {
  Future<List<Product>> getAll() async {
    const url =
        "https://uat.valuebaaz.in/api/v1/products/best-sellings?limit=10";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final products = json.map((e) {
        return Product(
            id: e["id"],
            added_by: e["added_by"],
            user_id: e["user_id"],
            name: e["name"],
            slug: e["slug"],
            product_type: e["product_type"],
            category_ids: e["category_ids"],
            images: e["images"]);
      }).toList();
      return products;
    }
    return [];
  }
}
*/