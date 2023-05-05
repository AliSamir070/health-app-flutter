import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_app/dot.dart';
import 'package:health_app/home_screen.dart';

import 'onboarding_content.dart';

class OnBoardingScreen extends StatefulWidget {


  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  List<Widget> onboardingContents = [
    OnboardingContent(
      text: "Welcome to Health app",
      imagePath: "assets/images/gettingstarted.png",
    ),
    OnboardingContent(
      text: "On Health app you can calculate your BMI which from you can know if your are underweight, normal, overweight, or obesity",
      imagePath: "assets/images/bmi.png",
    ),
    OnboardingContent(
      text: "Take a decision and follow a good lifestyle",
      imagePath: "assets/images/healthy_lifestyle.png",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                child: PageView.builder(
                  controller: pageController,
                    itemBuilder: (context , index){
                      return onboardingContents[index];
                    },
                    itemCount: onboardingContents.length,
                  onPageChanged: (index){
                      print("$index");
                      setState(() {
                        currentIndex = index;
                      });
                  },
                )
            ),
            SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40),
                 
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                            onboardingContents.length,
                            (index){
                              return BuildDot(isSelected: currentIndex==index);
                            }
                    ),
                  ),
                ),
                TextButton(
                    onPressed: (){
                      setState(() {
                        if(currentIndex==2){
                          Navigator.pushReplacement(context, CupertinoPageRoute(
                              builder: (context)=>HomeScreen()
                          ));
                        }else{
                          pageController.nextPage(
                              duration: Duration(
                                seconds: 1
                              ),
                              curve: Curves.bounceInOut
                          );
                        }
                      });
                    },
                    child: Text(
                      currentIndex==2?"Finish" :"Next",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                      ),
                    ),

                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
