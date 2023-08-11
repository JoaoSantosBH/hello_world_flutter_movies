import 'package:flutter/material.dart';

import '../data/failure.dart';
import 'state.dart';

class ViewStateBuilderDialog<T> extends StatefulWidget {
  final Widget Function(BuildContext context, ViewState<T> state) builder;
  final Function(Failure? failure) onError;
  final ViewState<T> state;

  const ViewStateBuilderDialog({
    Key? key,
    required this.builder,
    required this.onError,
    required this.state,
  }) : super(key: key);

  @override
  State<ViewStateBuilderDialog<T>> createState() =>
      _ViewStateBuilderDialogState<T>();
}

class _ViewStateBuilderDialogState<T> extends State<ViewStateBuilderDialog<T>> {
  void onError() {
    if (widget.state.error != null) {
      widget.onError(widget.state.error);
    }
  }

  @override
  void initState() {
    super.initState();
    widget.state.addListener(onError);
  }

  @override
  void dispose() {
    super.dispose();
    widget.state.removeListener(onError);
  }

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
