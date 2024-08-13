import 'package:avatar_glow/avatar_glow.dart';
import 'package:fajaralhijr_github_io/enum/device.dart';
import 'package:fajaralhijr_github_io/values/colors.dart';
import 'package:flutter/material.dart';

class AvatarCircleGlow extends StatelessWidget {
  final double screenWidth;
  final Device device;

  const AvatarCircleGlow({
    super.key,
    required this.screenWidth,
    required this.device,
  });

  @override
  Widget build(BuildContext context) {
    ImageProvider<Object> myProfile = const AssetImage("assets/my-profile.jpg");

    return AvatarGlow(
      animate: true,
      glowColor: kPrimaryColor,
      repeat: true,
      duration: const Duration(seconds: 3),
      glowRadiusFactor: device == Device.desktop
          ? (screenWidth < 1700 ? .15 : .20)
          : device == Device.mobile
              ? .2
              : .4 * 1.3,
      child: CircleAvatar(
        radius: device == Device.desktop
            ? (screenWidth * .099)
            : device == Device.mobile
                ? 90
                : 90 * 1.3,
        backgroundColor: kPrimaryColor,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: myProfile,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
