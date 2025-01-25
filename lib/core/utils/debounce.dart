import 'dart:async';
import 'dart:ui';

/// Utility class for debouncing function calls.
class Debounce {
  final int milliseconds;
  VoidCallback? _callback;
  Timer? _timer;

  Debounce({required this.milliseconds});

  void run(VoidCallback callback) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), callback);
    _callback = callback;
  }

  void cancel() {
    _timer?.cancel();
  }
}
