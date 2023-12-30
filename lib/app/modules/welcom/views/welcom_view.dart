import 'package:app/app/constants/colors/app_colors.dart';
import 'package:app/app/modules/auth/views/auth_view.dart';
import 'package:app/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';


// class WelcomView extends GetView<WelcomController> {
//   const WelcomView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.blueC,
//       body: Center(
//         child: Text(
//           'Dомашний',
//           style: TextStyle(
//             fontSize: 40,
//             fontFamily: 'Disket',
//             color: AppColors.purple,
//           ),
//         ),
//       ),
//     );
//   }
// }
class WelcomView extends StatefulWidget {
  const WelcomView({ Key? key }) : super(key: key);

  @override
  _WelcomViewState createState() => _WelcomViewState();
}

class _WelcomViewState extends State<WelcomView> {
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomeView()),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueC,
      body: Center(
        child: Text(
          'Dомашний',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'Disket',
            color: AppColors.purple,
          ),
        ),
      ),
    );
  }
}