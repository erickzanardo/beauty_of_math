import 'package:flutter/material.dart';

class AnimationPlayer extends StatefulWidget {
  const AnimationPlayer({
    required this.builder,
    this.duration = const Duration(seconds: 1),
    this.width = 200,
    this.height = 200,
    super.key,
  });

  final Widget Function(BuildContext, double) builder;
  final Duration duration;
  final double width;
  final double height;

  @override
  State<AnimationPlayer> createState() => _AnimationPlayerState();
}

class _AnimationPlayerState extends State<AnimationPlayer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width + 50,
      height: widget.height + 80,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: widget.width,
              height: widget.height,
              child: ColoredBox(
                color: Colors.black,
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return widget.builder(context, _controller.value);
                  },
                ),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  onPressed: () {
                    _controller.forward();
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.stop),
                  onPressed: () {
                    _controller.stop();
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.redo),
                  onPressed: () {
                    _controller.reverse();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
