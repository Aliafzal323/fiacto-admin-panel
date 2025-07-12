import 'dart:async';
import 'package:common/common.dart';
import 'package:flutter/material.dart';

class BuyerTimerWidget extends StatefulWidget {
  const BuyerTimerWidget({
    required this.buyerTime,
    super.key,
  });

  final int buyerTime;

  @override
  State<BuyerTimerWidget> createState() => _BuyerTimerWidgetState();
}

class _BuyerTimerWidgetState extends State<BuyerTimerWidget> {
  late int _remainingTime;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    setState(() {
      _remainingTime = widget.buyerTime ~/ 1000;
    });
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        setState(() {
          _remainingTime = 0;
        });
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String formatTime(int seconds) {
    final days = seconds ~/ (24 * 3600);
    final hours = (seconds % (24 * 3600)) ~/ 3600;
    final minutes = (seconds % 3600) ~/ 60;
    final secs = seconds % 60;

    return [
      if (days > 0) '$days days',
      if (hours > 0 || days > 0) '$hours hr',
      if (minutes > 0 || hours > 0 || days > 0) '$minutes min',
      '$secs sec',
    ].join(' : ');
  }

  @override
  Widget build(BuildContext context) {
    print('Rebuilding widget');

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.warning50,
        border: Border.all(color: context.warning500),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        _remainingTime > 0
            ? 'You have ${formatTime(_remainingTime)} left to complete the purchase.'
            : 'Time has expired.',
        style: context.sixteen400,
      ),
    );
  }
}
