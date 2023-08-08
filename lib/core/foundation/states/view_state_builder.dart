import 'package:flutter/material.dart';

import 'state.dart';

class ViewStateBuilder<T> extends StatefulWidget {
  final Widget Function(BuildContext context, ViewState<T> state) builder;

  final ViewState<T> state;

  const ViewStateBuilder({
    Key? key,
    required this.state,
    required this.builder,
  }) : super(key: key);

  @override
  State<ViewStateBuilder<T>> createState() => _ViewStateBuilderState<T>();
}

class _ViewStateBuilderState<T> extends State<ViewStateBuilder<T>> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.state,
      builder: (context, _) {
        return widget.builder(context, widget.state);
      },
    );
  }
}
