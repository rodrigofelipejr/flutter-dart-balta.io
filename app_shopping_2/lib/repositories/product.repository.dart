import 'package:app_shopping_2/models/product-details.model.dart';
import 'package:app_shopping_2/models/product-list-item.model.dart';
import 'package:app_shopping_2/settings.dart';
import 'package:dio/dio.dart';

class ProductRepository {
  Future<List<ProductListItemModel>> getAll() async {
    var url = "${Settings.apiUrl}v1/products";
    Response response = await Dio().get(url);
    return (response.data as List).map((data) => ProductListItemModel.fromJson(data)).toList();
  }

  Future<List<ProductListItemModel>> getByCategory(String category) async {
    var url = "${Settings.apiUrl}v1/categories/$category/products";
    Response response = await Dio().get(url);
    return (response.data as List).map((data) => ProductListItemModel.fromJson(data)).toList();
  }

  Future<ProductDetailsModel> get(String tag) async {
    var url = "${Settings.apiUrl}v1/products/$tag";
    Response response = await Dio().get(url);
    return ProductDetailsModel.fromJson(response.data);
  }
}
