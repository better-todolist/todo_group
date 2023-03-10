import 'package:flutter/widgets.dart';

/// SingleTodoItem 每个组内的子todo
class SingleTodoItem extends StatelessWidget {
  final bool isFinish;
  final String message;
  final Function(bool) onFinishStateChange;

  const SingleTodoItem(
    this.message, {
    super.key,
    required this.onFinishStateChange,
    required this.isFinish,
  });

  /// 要求实现以下功能
  ///
  /// 1. 通过长按将事件标记为完成，并调用
  /// `onFinishStateChange` 回调函数,并只能将未完成标记为完成，同时将自身disable
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
