part of '_index.dart';

class ProductEditData {
  final rxTitle = 'ProductEdit'.inj();

  final rxInt = 0.inj();

  final rxProductList = Data.productList.st.rxProductList;

  final rxProduct = Data.productDetail.st.rxProduct;
}
