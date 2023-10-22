part of '_index.dart';

abstract class Ctrl {
  static ProductAddCtrl get productAdd => ProductAddCtrl();
  static ProductDetailCtrl get productDetail => ProductDetailCtrl();
  static ProductEditCtrl get productEdit => ProductEditCtrl();
  static ProductListCtrl get productList => ProductListCtrl();
}
