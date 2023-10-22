part of '../_index.dart';

class ProductListAppbar extends StatelessWidget {
  const ProductListAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        OnReactive(
          () => IconButton(
            onPressed: _dt.rxProductList.st.isEmpty
                ? null
                : () => nav.toCupertinoDialog(
                      CupertinoAlertDialog(
                        title: const Text('Confirmation'),
                        content: const Text('Are you sure to delete these items?'),
                        actions: [
                          CupertinoDialogAction(
                            child: const Text('cancel'),
                            onPressed: () => nav.back(),
                          ),
                          CupertinoDialogAction(
                            isDefaultAction: true,
                            isDestructiveAction: true,
                            onPressed: () => _ct.deleteAllProducts(),
                            child: const Text('delete'),
                          ),
                        ],
                      ),
                    ),
            icon: const Icon(Icons.delete),
          ),
        ),
      ],
    );
  }
}
