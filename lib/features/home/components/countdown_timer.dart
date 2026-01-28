import 'package:project1/imports.dart';

class CountdownTimer extends StatelessWidget {
  final DateTime endTime;
  final TextStyle? textStyle;

  const CountdownTimer({super.key, required this.endTime, this.textStyle});

  String format(Duration d) {
    final h = d.inHours;
    final m = d.inMinutes.remainder(60);
    final s = d.inSeconds.remainder(60);
    return "$h h $m m $s s";
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        final remaining = endTime.difference(DateTime.now());
        if (remaining.isNegative) {
          return Text("Ended", style: textStyle,);
        }
        return Text(format(remaining), style: textStyle,);
      },
    );
  }
}
