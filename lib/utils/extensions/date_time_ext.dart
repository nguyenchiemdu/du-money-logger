// import 'package:bubbly/utils/extensions/durtation_ext.dart';
import 'package:intl/intl.dart';

extension DateToString on DateTime {
  String toReadFormat() {
    return DateFormat('dd MMMM yyyy').format(this);
  }

  // String toHumanDurationBeforeNow() {
  //   return DateTime.now().difference(this).toReducedReadFormat();
  // }
}
