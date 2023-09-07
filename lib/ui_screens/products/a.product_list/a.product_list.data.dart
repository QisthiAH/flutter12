part of '_index.dart';

class ProductListData {
  final rxTitle = 'ProductList'.inj();

  final rxInt = 0.inj();

  final rxProductList = RM.inject(
    () => [],
    sideEffects: SideEffects(
      initState: () => _ct.getAllProducts(),
    ),
  );

  final rxSelectedId = RM.inject<String>(() => '');
}
