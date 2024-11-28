import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop_app_api/screen/ui/model/home_model.dart';

class ApiScrevices {
  static const String baseUrl = 'https://fakestoreapi.com/products';

  Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => Product.fromJson(item)).toList();
    } else {
      throw Exception('Failed to fetch products');
    }
  }
}
