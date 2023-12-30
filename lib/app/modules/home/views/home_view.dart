import 'package:app/app/constants/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
       shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(15),
      ),
    ),
        shadowColor: Colors.black,
        title: Column(
          children: [
            Text(
              'Dомашний',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Disket',
                color: AppColors.purple,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SearchBar(
              shape: MaterialStatePropertyAll(BeveledRectangleBorder(borderRadius: BorderRadius.circular(5))),
              shadowColor: MaterialStatePropertyAll(Colors.transparent),
              leading: SvgPicture.asset(""),
              hintText: "Посик",
              hintStyle: MaterialStatePropertyAll(
                TextStyle(
                  color: Colors.grey,
                  fontFamily: "Disket",
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 150,
        centerTitle: true,
        
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),

      bottomNavigationBar: new BottomAppBar(
  child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      IconButton(onPressed: () {}, icon: Icon(Icons.menu),),
    ],
  ),
),
    );
  }
}
