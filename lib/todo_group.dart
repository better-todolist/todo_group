library todo_group;

import 'package:flutter/widgets.dart';
import 'package:todo_record/record/sub_todo.dart';

class TodoGroup extends StatefulWidget {
  final String? groupName;
  final List<SubRecord> subTodos;

  final bool enableEdit;
  final Function? onDelete;
  final Function(String)? onUpdate;
  final Function(SubRecord)? onAdd;

  // 可能需要其他fields 可以酌情添加

  const TodoGroup(
      {super.key,
      this.onDelete,
      this.groupName,
      required this.subTodos,
      this.enableEdit = false,
      this.onUpdate,
      this.onAdd});

  @override
  State<StatefulWidget> createState() => TodoGroupState();
}

class TodoGroupState extends State<TodoGroup> {
  /// 要求实现
  ///
  /// 可以参考原型项目
  ///
  ///如果 `groupName` != null 使用 `ExpansionTile`
  /// - leading 部分使用 `todo_progress` 中进度条
  /// - title 部分使用 `groupName`
  /// - subtitle 在 `enable Edit` 时显示 `edit` 和 `add`
  /// - children 全部是 SingleTodoItem 请为其提供正确的参数。
  /// 请注意，子todo事件完成时，处理会影响当前group 的进度条，同时会影响最外层的 进度条
  /// - 下拉后的图标设置可选更换
  ///
  /// 在 `Enable Edit` 时
  /// - 长按 自身 （不是progress-bar） 弹出删除确认弹窗，确认后调用 `onDelete`
  /// - 点击 `edit` 时，弹出弹窗修改内容，如果进行了修改，那就更新自身 `groupName` 并调用回调 `onUpdate`
  /// - 点击 `add` 时，弹出弹窗，添加新的 sub todo，如果添加成功，调用 `onAdd` 回调
  ///
  /// 如果 `groupName` == null, 可以直接返回 SingleTodoItem
  ///  - *需要检查 `subTodos` 长度为 1*
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
