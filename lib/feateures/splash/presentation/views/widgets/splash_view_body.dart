import 'package:booklyapp/constant.dart';
import 'package:booklyapp/core/utils/asset_data.dart';
import 'package:booklyapp/feateures/home/presentation/view/home_view.dart';
import 'package:booklyapp/feateures/splash/presentation/views/widgets/text_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlideAnimation();
    navigateToHome();
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetData.logo),
          TextAnimation(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  
  void navigateToHome() {
    Future.delayed(const Duration(milliseconds: 6000),(){
      Get.to(const HomeView(),transition: Transition.fade,
    duration: kDuration,
     );}
     );
  }
    
  

  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 6),
      end: const Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }
}
