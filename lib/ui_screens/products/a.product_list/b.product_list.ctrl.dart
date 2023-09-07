part of '_index.dart';

class ProductListCtrl {
  init() => logxx.i(ProductListCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  List<Product> readAllProducts() {
    List<Product> product = [];
    product.add(Product.init());
    product.add(Product.random());
    logx.i(product.toString());
    return product;
  }

  getAllProducts() {
    _dt.rxProductList.st = readAllProducts();
  }

  setSelectedId(String id) {
    _dt.rxSelectedId.st = id;
  }

  select(String id) {
    setSelectedId(id);
    nav.to(Routes.productDetail);
  }

  removeById(String id) {
    _dt.rxProductList.st = [..._dt.rxProductList.st]..removeWhere((element) => element.id == id);
  }

  deleteAllProducts() {
    for (var product in _dt.rxProductList.st) {
      removeById(product.id);
      logx.e(product.toString());
      nav.back();
      nav.back();
    }
  }
}
