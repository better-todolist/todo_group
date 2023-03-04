import 'package:flutter/widgets.dart';

/// SingleTodoItem 每个组内的子todo
class SingleTodoItem extends StatefulWidget {
  final String message;
  final bool enableEdit;
  final Function(bool) onFinishStateChange;
  final Function()? onDelete;
  final Function(String)? onUpdate;

  const SingleTodoItem(this.message,
      {super.key,
      required this.enableEdit,
      required this.onFinishStateChange,
      this.onUpdate,
      this.onDelete});

  @override
  State<StatefulWidget> createState() => SingleTodoItemState();
}

class SingleTodoItemState extends State<SingleTodoItem> {
  /// 要求实现以下功能
  ///
  /// 1. 在 enable Edit 时 显示 `edit` 和 `delete` 按键
  ///   - 点击 `edit` 后， 会弹出对话框用于修改内容，如果修改了内容，调用 `onUpdate` 回调函数
  ///   - 点击 `delete` 后， 会弹出对话框用于确认删除内容，如果确认了，调用 `onDelete` 回调函数
  ///   - 长按自身后，会将完成状态反转，如果是将已完成反转为未完成，那么需要弹出确认弹窗
  /// 2. 在 disable Edit 时 （enableEdit = false） 时，能够通过长按将事件标记为完成，并调用
  /// `onFinishStateChange` 回调函数,并只能将未完成标记为完成，同时将自身disable
  ///
  /// 3.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
