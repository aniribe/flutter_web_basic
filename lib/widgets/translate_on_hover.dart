import 'package:flutter/cupertino.dart';

class TranslateOnHover extends StatefulWidget {
  final Widget child;
  const TranslateOnHover({Key? key, required this.child}) : super(key: key);

  @override
  State<TranslateOnHover> createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
        duration: const Duration(milliseconds: 200),
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
