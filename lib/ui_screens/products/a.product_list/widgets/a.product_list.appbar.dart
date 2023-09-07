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
            onPressed: () => _dt.rxProductList.st.isEmpty
                ? null
                : nav.toCupertinoDialog(
                    CupertinoAlertDialog(
                      title: const Text('confirmation'),
                      content: const Text('Are u sure to delete?'),
                      actions: [
                        CupertinoDialogAction(
                          child: const Text('cancel'),
                          onPressed: () => nav.back(),
                        ),
                        CupertinoDialogAction(
                          onPressed: () => _ct.deleteAllProducts(),
                          isDefaultAction: true,
                          isDestructiveAction: true,
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
