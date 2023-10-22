part of '_index.dart';

class ProductAddData {
  final rxTitle = 'ProductAdd'.inj();

  final rxInt = 0.inj();

  final rxProductList = Data.productList.st.rxProductList;

  final rxForm = RM.injectForm(
    submit: () async => await _ct.addProductList(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxProductName = RM.injectTextEditing(
    text: 'NAMA PRODUK',
    validators: [
      Validate.isNotEmpty,
    ],
  );
  final rxPrice = RM.injectTextEditing(
    text: 1000.toString(),
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );
  final rxQuantity = RM.injectTextEditing(
    text: 950.toString(),
    validators: [
      Validate.isNotEmpty,
      Validate.isNumeric,
    ],
  );
}
