import 'package:app_shopping_2/models/category.model.dart';
import 'package:app_shopping_2/settings.dart';
import 'package:dio/dio.dart';

class CategoryRepository {
  Future<List<CategoryModel>> getAll() async {
    var url = "${Settings.apiUrl}v1/categories";
    Response response = await Dio().get(url);
    return (response.data as List).map((course) => CategoryModel.fromJson(course)).toList();
  }
}
