import 'package:fajaralhijr_github_io/utils/external_app_util.dart';
import 'package:flutter/material.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IconHomeHoverUtil extends StatefulWidget {
  final IconData icon;
  final Color color;
  final bool isMobile;
  const IconHomeHoverUtil({
    super.key,
    required this.icon,
    required this.color,
    this.isMobile = false,
  });

  @override
  State<IconHomeHoverUtil> createState() => _IconHomeHoverUtilState();
}

class _IconHomeHoverUtilState extends State<IconHomeHoverUtil> {
  Color _iconColor = const Color(0xffB3A595);
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          _iconColor = widget.color;
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _iconColor = const Color(0xffB3A595);
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: () async {
          if (widget.icon == MdiIcons.linkedin) {
            ExternalAppUtil.redirectToLink(
                url: "https://www.linkedin.com/in/fajaralhijr");
          } else if (widget.icon == MdiIcons.github) {
            ExternalAppUtil.redirectToLink(
                url: "https://github.com/fajarmuhamad616");
          } else if (widget.icon == MdiIcons.instagram) {
            ExternalAppUtil.redirectToLink(
                url: "https://instagram.com/fajaralhijr");
          }
        },
        child: Padding(
          padding: widget.isMobile
              ? const EdgeInsets.symmetric(horizontal: 8.0)
              : const EdgeInsets.only(right: 10),
          child: _isHovered
              ? DecoratedIcon(
                  widget.icon,
                  color: _iconColor,
                  size: 26,
                  shadows: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: _iconColor,
                    ),
                  ],
                )
              : DecoratedIcon(
                  widget.icon,
                  color: _iconColor,
                  size: 26,
                ),
        ),
      ),
    );
  }
}
