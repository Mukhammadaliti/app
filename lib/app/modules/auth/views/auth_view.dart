import 'package:app/app/constants/colors/app_colors.dart';
import 'package:app/app/modules/auth/views/widgets/register_text_widget.dart';
import 'package:app/app/modules/auth/views/widgets/register_widget.dart';
import 'package:app/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  AuthView({Key? key}) : super(key: key);
  final _emailController = TextEditingController();
  final _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _reTypePasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFF121223),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 45,
                            height: 45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  backgroundColor: Colors.white),
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SenRegular',
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        " Please sign up to get started",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SenRegular',
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        padding: const EdgeInsets.all(24),
                        height: MediaQuery.of(context).size.height / 1.33,
                        // height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RegisterTextWidgets(
                              text: "NAME",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RegisterWidget(
                              controller: _userNameController,
                              hintText: 'john doe',
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            RegisterTextWidgets(
                              text: "EMAIL",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RegisterWidget(
                              controller: _emailController,
                              hintText: 'example@gmail.com',
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RegisterTextWidgets(
                              text: "PASSWORD",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RegisterWidget(
                              controller: _passwordController,
                              // obscureText: passwordVisibilityCubit.state,
                              hintText: '* * * * * * * *',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.visibility,
                                  color: AppColors.colorA0,
                                ),
                                onPressed: () {
                                  // passwordVisibilityCubit.toggleVisibility();
                                },
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RegisterTextWidgets(
                              text: "Re-Type Password",
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RegisterWidget(
                              controller: _reTypePasswordController,
                              // obscureText: reTypePasswordVisibilityCubit.state,
                              hintText: '* * * * * * * *',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.visibility_off,
                                  color: AppColors.colorA0,
                                ),
                                onPressed: () {
                                  // reTypePasswordVisibilityCubit
                                  //     .reTypeVisibility();
                               },
                              ),
                            ),
                            SizedBox(
                              height: 47,
                            ),
                            SizedBox(
                              height: 62,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeView()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    backgroundColor: AppColors.colorF7),
                                child: Center(
                                  child: Text("Sign Up",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "SenRegular",
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
