part of '_index.dart';

class ProductEditCtrl {
  init() => logxx.i(ProductEditCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  // * Fungsi edit menggunakan setstate

  editProduct() {
    Product newProduct = Product(
      id: '${_dt.rxProduct.st?.id}',
      name: 'new product',
      price: 99999,
      quantity: 99,
      createdAt: '${_dt.rxProduct.st?.createdAt}',
      updatedAt: DateTime.now().toString(),
    );

    final index = _dt.rxProductList.st.indexWhere((element) => element.id == newProduct.id);
    logx.i(newProduct.toString());
    _dt.rxProductList.setState((s) => s[index] = newProduct);
    return _dt.rxProductList.st[index];
  }

  // * Menangkap fungsi untuk mengedit oleh rxProduct

  getProductEdit() {
    _dt.rxProduct.st = editProduct();
  }
}
