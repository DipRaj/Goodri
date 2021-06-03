import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  final Widget? title;
  final Widget? icon;
  final List<Widget>? actions;
  const AppBarWidget({Key? key, this.title, this.icon, this.actions})
      : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: widget.title,
      leading: widget.icon,
      actions: widget.actions,
    );
  }
}
