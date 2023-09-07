part of '../_index.dart';

class ProductDetailAppbar extends StatelessWidget {
  const ProductDetailAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      actions: [
        IconButton(
          onPressed: () => nav.toCupertinoDialog(
            CupertinoAlertDialog(
              title: const Text('confirmation'),
              content: const Text('are u sure to delete this product?'),
              actions: [
                CupertinoDialogAction(
                  child: const Text('cancel'),
                  onPressed: () => nav.back(),
                ),
                CupertinoDialogAction(
                  onPressed: () => _ct.removeById(),
                  isDefaultAction: true,
                  isDestructiveAction: true,
                  child: const Text('delete'),
                ),
              ],
            ),
          ),
          icon: const Icon(Icons.delete),
        ),
      ],
    );
  }
}
