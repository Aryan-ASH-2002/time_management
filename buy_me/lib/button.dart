import 'package:buy_me/text_style.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'loading.dart';

class Button extends StatefulWidget {
  const Button({
    required this.onTap,
    required this.text,
    this.color,
    this.textColor,
    this.borderRadius,
    this.borderColor = Colors.transparent,
    this.loading = false,
    this.height,
    this.width,
    this.paddingPreEnd,
    this.paddingPreStart,
    this.margin,
    this.padding,
    this.style,
    this.enable = true,
    this.shadow = false,
    Key? key,
    this.prefixWidget,
    this.postfixWidget,
  }) : super(key: key);

  final Color? color;
  final String text;
  final Color? textColor;
  final Color borderColor;
  final VoidCallback onTap;
  final bool loading;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  final TextStyle? style;
  final Widget? prefixWidget;
  final Widget? postfixWidget;
  final bool enable;
  final double? paddingPreEnd;
  final double? paddingPreStart;
  final bool shadow;

  @override
  ButtonState createState() => ButtonState();
}

class ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>()!;

    return AnimatedContainer(
      margin: widget.margin ?? EdgeInsets.zero,
      padding: widget.padding ??
          const EdgeInsetsDirectional.only(start: 10, end: 10),
      width: widget.width,
      height: widget.height ?? 42,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: widget.enable
              ? (widget.color ?? customColors.orange50)
              : customColors.gray1,
          boxShadow: widget.shadow ? null : null,
          borderRadius:
              widget.borderRadius ?? const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: widget.borderColor, width: 1)),
      duration: const Duration(milliseconds: 500),
      child: InkWell(
        onTap: () {
          if (widget.enable) {
            widget.onTap();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            widget.loading == false ? widget.prefixWidget ?? Container() : const SizedBox(),
            Padding(
                padding: EdgeInsetsDirectional.only(
                    start: widget.prefixWidget != null ? widget.paddingPreStart! : 0,
                    end: widget.postfixWidget != null ? widget.paddingPreEnd! : 0),
                child: widget.loading
                    ? Loading(
                        color: widget.textColor ?? customColors.background1,
                        size: 20,
                      )
                    : Text(
                        widget.text,
                        style: widget.style ??
                            styleCaption1(widget.textColor ?? customColors.white),
                      )),
            widget.postfixWidget ?? Container(),
          ],
        ),
      ),
    );
  }
}
