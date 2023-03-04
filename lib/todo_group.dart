library todo_group;

import 'package:flutter/widgets.dart';
import 'package:todo_record/record/sub_todo.dart';
import 'package:todo_progress/todo_progress.dart';

class TodoGroup extends StatefulWidget {
  final String? groupName;
  final List<SubRecord> subTodos;

  final bool enableEdit;
  final Function? onDelete;
  final Function(String)? onUpdate;

  // 可能需要其他fields 可以酌情添加

  const TodoGroup(
      {super.key,
      this.onDelete,
      this.groupName,
      required this.subTodos,
      this.enableEdit = false,
      this.onUpdate});

  @override
  State<StatefulWidget> createState() => TodoGroupState();
}

class TodoGroupState extends State<TodoGroup> {
  /// 要求实现
  ///
  ///如果 `groupName` != null 使用 `ExpansionTile`
  /// - leading 部分使用 `todo_progress` 中进度条
  /// - title 部分使用 `groupName`
  /// - subtitle 在 `enable Edit` 时显示 `edit`
  /// - children 全部是 SingleTodoItem 请为其提供正确的参数
  /// - 下拉后的图标设置可选更换
  ///
  /// 在 `Enable Edit` 时
  /// - 长按 自身 （不是progress-bar） 弹出删除确认弹窗，确认后调用 `onDelete`
  /// - 点击 `edit` 时，弹出弹窗修改内容，如果进行了修改，那就更新自身 `groupName` 并调用回调 `onUpdate`
  ///
  /// 如果 `groupName` == null, 可以直接返回 SingleTodoItem
  ///  - *需要检查 `subTodos` 长度为 1*
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}