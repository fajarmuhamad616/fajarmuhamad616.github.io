import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomButtonUtil extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onClick;
  final bool isLoading;
  const CustomButtonUtil({
    super.key,
    required this.text,
    required this.icon,
    required this.onClick,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(45),
            border: Border.all(
              color: Colors.green.shade900,
              width: 2.0,
            ),
          ),
          child: isLoading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(text),
                    const SizedBox(width: 10),
                    DecoratedIcon(
                      MdiIcons.loading,
                      color: Colors.white,
                    )
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(text),
                    const SizedBox(width: 10),
                    DecoratedIcon(
                      icon,
                      color: Colors.white,
                      shadows: const [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
