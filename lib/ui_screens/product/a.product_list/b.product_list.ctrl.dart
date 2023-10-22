part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  List<Product> readAllProducts() {
    List<Product> products = [];
    // products.add(Product.init());
    products.add(Product.random());
    logx.i(products.toString());
    return products;
  }

  getAllProducts() {
    _dt.rxProductList.st = readAllProducts();
  }

  setSelectedId(String id) {
    _dt.rxSelectedId.st = id;
  }

  select(String id) {
    setSelectedId(id);
    nav.to(Routes.productsDetail);
  }

  removeById(String id) {
    _dt.rxProductList.st = [..._dt.rxProductList.st]..removeWhere((element) => element.id == id);
  }

  deleteAllProducts() {
    for (var product in _dt.rxProductList.st) {
      removeById(product.id);
      nav.back();
      nav.back();
    }
  }
}
