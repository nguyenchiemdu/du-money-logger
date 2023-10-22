// import 'package:humanize_duration/humanize_duration.dart';

// extension DurationToString on Duration {
//   String toReadFormat() {
//     return humanizeDuration(this,
//         language: const ViLanguage(),
//         options: HumanizeOptions(units: [
//           Units.year,
//           Units.month,
//           Units.week,
//           Units.day,
//           Units.day,
//           Units.hour,
//           Units.minute
//         ]));
//   }

//   String toReducedReadFormat() {
//     var time = humanizeDuration(this,
//         language: const ViLanguage(),
//         options: HumanizeOptions(units: [getMaxDurationUnit()]));
//     if (time.isEmpty) {
//       return 'bây giờ';
//     }
//     return time;
//   }

//   Units getMaxDurationUnit() {
//     if (this.inDays >= 365) return Units.year;
//     if (this.inDays >= 30) return Units.month;
//     if (this.inDays >= 7) return Units.week;
//     if (this.inDays >= 1) return Units.day;
//     if (this.inHours >= 1) return Units.hour;
//     return Units.minute;
//   }
// }

// class ViLanguage implements HumanizeLanguage {
//   const ViLanguage();

//   @override
//   String name() => 'vi';

//   @override
//   String day(int value) => 'ngày';

//   @override
//   String hour(int value) => 'giờ';

//   @override
//   String millisecond(int value) => 'mili giây';

//   @override
//   String minute(int value) => 'phút';

//   @override
//   String month(int value) => 'tháng';

//   @override
//   String second(int value) => 'giây';

//   @override
//   String week(int value) => 'tuần';

//   @override
//   String year(int value) => 'năm';
// }
