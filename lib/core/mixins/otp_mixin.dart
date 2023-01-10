// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:pocopay/core/utils/extensions/number.dart';

// mixin OtpMixin<T extends StatefulWidget> on State<T> {
//   int timeoutMinutes = 5;
//   int timeoutSeconds = 60;
//   Timer? timer;

//   @override
//   void initState() {
//     super.initState();
//     startTimer();
//   }

//   void startTimer() {
//     timer?.cancel();

//     timeoutMinutes--;
//     timer = Timer.periodic(1.seconds, (timer) {
//       if (timeoutMinutes == 0 && timeoutSeconds == 0) {
//         timer.cancel();
//       } else {
//         setState(() {
//           timeoutSeconds--;
//           if (timeoutSeconds == 0 && timeoutMinutes > 0) {
//             timeoutSeconds = 60;
//             timeoutMinutes--;
//           }
//         });
//       }
//     });
//   }

//   void resetTimer() {
//     timeoutSeconds = 60;
//     timeoutMinutes = 10;
//     startTimer();
//   }

//   @override
//   void dispose() {
//     timer?.cancel();
//     super.dispose();
//   }

//   bool isTimedOut() {
//     return timeoutMinutes == 0 && timeoutSeconds == 0;
//   }

//   String getCurrentOtpTimeoutCount() =>
//       "Resend code in ${timeoutMinutes.toString().padLeft(2, "0")}:${timeoutSeconds.toString().padLeft(2, "0")} mins";
// }
