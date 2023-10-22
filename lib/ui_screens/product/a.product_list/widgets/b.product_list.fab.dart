part of '../_index.dart';

class ProductListFab extends StatelessWidget {
  const ProductListFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      // onPressed: () => _ctFromAdd.addProduct(),
      onPressed: () => nav.to(Routes.productsAdd),
    );
  }
}
