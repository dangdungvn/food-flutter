import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors.dart';
import 'package:foodapp/utils/dimensions.dart';
import 'package:foodapp/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return secondHalf.isEmpty
        ? SmallText(
            color: AppColors.paraColor,
            size: Dimensions.font16,
            text: firstHalf,
          )
        : Column(
            children: [
              SmallText(
                height: 1.8,
                color: AppColors.paraColor,
                size: Dimensions.font16,
                text: hiddenText ? ("$firstHalf...") : (firstHalf + secondHalf),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    hiddenText = !hiddenText;
                  });
                },
                child: Row(
                  children: [
                    SmallText(
                      text: "Show more",
                      color: AppColors.mainColor,
                    ),
                    Icon(
                      hiddenText
                          ? Icons.keyboard_arrow_down_rounded
                          : Icons.keyboard_arrow_up_rounded,
                      color: AppColors.mainColor,
                    )
                  ],
                ),
              )
            ],
          );
  }
}
