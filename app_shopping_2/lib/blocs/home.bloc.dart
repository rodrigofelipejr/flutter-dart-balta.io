import 'package:app_shopping_2/models/category.model.dart';
import 'package:app_shopping_2/models/product-list-item.model.dart';
import 'package:app_shopping_2/repositories/category.repository.dart';
import 'package:app_shopping_2/repositories/product.repository.dart';

class HomeBloc {
  final categoryRepository = new CategoryRepository();
  final productRepository = new ProductRepository();

  List<ProductListItemModel> products;
  List<CategoryModel> categories;
  String selectedCategory = 'todos';

  HomeBloc() {
    getCategories();
    getProducts();
  }

  getCategories() {
    categoryRepository.getAll().then((data) {
      this.categories = data;
    });
  }

  getProducts() {
    productRepository.getAll().then((data) {
      this.products = data;
    });
  }

  getProductyByCategory() {
    productRepository.getByCategory(selectedCategory).then((data) {
      this.products = data;
    });
  }

  changeCategory(tag) {
    selectedCategory = tag;
    products = null;
    getProductyByCategory();
  }
}
