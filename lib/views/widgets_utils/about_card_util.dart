// ignore_for_file: avoid_unnecessary_containers

import 'package:fajaralhijr_github_io/models/about_card_model.dart';
import 'package:fajaralhijr_github_io/utils/fonts_util.dart';
import 'package:flutter/material.dart';

class AboutCard extends StatefulWidget {
  final AboutCardModel model;

  const AboutCard({
    super.key,
    required this.model,
  });

  @override
  State<AboutCard> createState() => _AboutCardState();
}

class _AboutCardState extends State<AboutCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 5),
            color: Color.fromARGB(255, 51, 51, 51),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.model.title,
                  style: kMiniTitleTextStyleGreen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Text(
              widget.model.content,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              maxLines: 3,
              style: kNormalTextStyleGrey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                widget.model.icon,
                size: 30.0,
                color: widget.model.color,
              ),
              // Image.asset(
              //   widget.model.icon,
              //   height: 30,
              //   width: 30,
              //   fit: BoxFit.cover,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
