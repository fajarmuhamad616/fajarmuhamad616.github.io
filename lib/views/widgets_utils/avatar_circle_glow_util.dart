import 'package:avatar_glow/avatar_glow.dart';
import 'package:fajaralhijr_github_io/enum/device_enum.dart';
import 'package:flutter/material.dart';

class AvatarCircleGlowUtil extends StatelessWidget {
  final double screenWidth;
  final DeviceEnum device;

  const AvatarCircleGlowUtil({
    super.key,
    required this.screenWidth,
    required this.device,
  });

  @override
  Widget build(BuildContext context) {
    ImageProvider<Object> myProfile = const AssetImage("assets/my-profile.jpg");
    return AvatarGlow(
      animate: true,
      glowColor: Colors.green.shade800,
      repeat: true,
      duration: const Duration(seconds: 3),
      glowRadiusFactor: device == DeviceEnum.DESKTOP
          ? (screenWidth < 1700 ? .15 : .20)
          : device == DeviceEnum.MOBILE
              ? 160
              : 120.0 * 1.3,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: myProfile,
            fit: BoxFit.contain,
          ),
          color: Colors.black54,
        ),
      ),
    );
  }
}
