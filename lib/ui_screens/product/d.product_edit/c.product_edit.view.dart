part of '_index.dart';

class ProductEditView extends StatelessWidget {
  const ProductEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductEditAppbar(),
      ),
      // floatingActionButton: const ProductEditFab(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1000),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  onEditingComplete: () => _dt.rxPrice.st.focusNode.requestFocus(),
                  focusNode: _dt.rxProductName.st.focusNode,
                  controller: _dt.rxProductName.st.controller,
                  decoration: InputDecoration(
                    hintText: 'input your product name',
                    label: const Text('product name'),
                    errorText: _dt.rxProductName.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  onEditingComplete: () => _dt.rxQuantity.st.focusNode.requestFocus(),
                  focusNode: _dt.rxPrice.st.focusNode,
                  controller: _dt.rxPrice.st.controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'input your product name',
                    label: const Text('product name'),
                    errorText: _dt.rxPrice.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  onEditingComplete: () => _dt.rxQuantity.st.focusNode.unfocus(),
                  focusNode: _dt.rxQuantity.st.focusNode,
                  controller: _dt.rxQuantity.st.controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'input your product name',
                    label: const Text('product name'),
                    errorText: _dt.rxQuantity.error,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => ElevatedButton(
                  // onPressed: _dt.rxForm.isValid ? () => _ct.submitEdit() : null,
                  onPressed: () => _ct.submitEdit(),
                  child: const Text(
                    "submit",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
