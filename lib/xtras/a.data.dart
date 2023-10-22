part of '_index.dart';

abstract class Data {
  static Injected<ProductAddData> get productAdd => _productAddData;
  static Injected<ProductDetailData> get productDetail => _productDetailData;
  static Injected<ProductEditData> get productEdit => _productEditData;
  static Injected<ProductListData> get productList => _productListData;
}

final _productAddData = RM1.inj(ProductAddData(), Ctrl.productAdd.init);
final _productDetailData = RM1.inj(ProductDetailData(), Ctrl.productDetail.init);
final _productEditData = RM1.inj(ProductEditData(), Ctrl.productEdit.init);
final _productListData = RM1.inj(ProductListData(), Ctrl.productList.init);
