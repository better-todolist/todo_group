library todo_group;

import 'package:flutter/widgets.dart';
import 'package:todo_record/record/sub_todo.dart';

class TodoGroup extends StatelessWidget {
  final SubTodoGroup group;
  final bool initExpand;
  final Function(SubRecord)? onAdd;
  final Function(int)? onFinish;

  // 可能需要其他fields 可以酌情添加

  const TodoGroup({
    super.key,
    required this.group,
    this.onAdd,
    this.initExpand = false,
    this.onFinish,
  });

  /// 要求实现
  ///
  /// 可以参考原型项目
  ///
  ///如果 `groupName` != null 使用 `ExpansionTile`
  /// - 如果 initExpand == true 那就自动展开
  /// - leading 部分使用 `todo_progress` 中进度条
  /// - title 部分使用 `groupName`
  /// - subtitle 在 `enable Edit` 时显示 `edit` 和 `add`
  /// - children 全部是 SingleTodoItem, 请为其提供正确的参数。当child 被点击完成了，
  /// 调用回调函数 onFinish
  /// 请注意，子todo事件完成时，处理会影响当前group 的进度条，同时会影响最外层的 进度条
  /// - 下拉后的图标设置可选更换
  ///
  /// - 点击 `add` 时，弹出弹窗，添加新的 sub todo，如果添加成功，调用 `onAdd` 回调
  ///
  /// 如果 `groupName` == null, 应该产生异常，这个情况是由上一级处理的，不应该进入这
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
