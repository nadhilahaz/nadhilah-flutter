part of '_index.dart';

class ProductAddCtrl {
  init() => logxx.i(ProductAddCtrl, '...');

  action() => _dt.rxInt.setState((s) => s + 1);

  // * Fungsi menambahkan menggunakan insert

  Future<void> addProductList() async {
    final product = Product(
      id: UniqueKey().toString().substring(2, 7),
      name: _dt.rxProductName.value,
      price: int.parse(_dt.rxPrice.value),
      quantity: int.parse(_dt.rxQuantity.value),
      createdAt: DateTime.now().toString(),
    );

    _dt.rxProductList.st = [..._dt.rxProductList.st]..insert(0, product);
    nav.back();
  }

// * fungsi untuk mengirimkan hasil inputan
  submit() => _dt.rxForm.submit();
}
