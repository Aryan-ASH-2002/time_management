import 'package:buy_me/text_in_model.dart';
import 'package:buy_me/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart';

class TextIn extends StatelessWidget {
  const TextIn({
    required this.textInput,
    this.placeHolderText,
    this.enable = true,
    this.borderRadius,
    this.inputType = TextInputType.text,
    this.textAction = TextInputAction.done,
    this.headerText,
    this.onChanged,
    this.minLines = 1,
    this.submit,
    this.maxLines = 1,
    this.maxLength,
    this.bottomPadding,
    this.nextTextIn,
    this.obscureText = false,
    this.align = TextAlign.start,
    this.leftIcon,
    this.subHeaderText,
    this.er = "",
    this.isEn = false,
    this.icon,
    this.onTapSuffix,
    this.validator,
    super.key,
  });

  final TextInModel textInput;
  final String? placeHolderText;
  final bool enable;
  final TextInputType inputType;
  final TextInputAction textAction;
  final String? headerText;
  final String? subHeaderText;
  final void Function(TextInModel)? onChanged;
  final Function(TextInModel)? submit;
  final int maxLines;
  final int minLines;
  final int? maxLength;
  final BorderRadius? borderRadius;
  final double? bottomPadding;
  final TextInModel? nextTextIn;
  final TextAlign align;
  final bool obscureText;
  final Widget? leftIcon;
  final String er;
  final bool isEn;
  final Icon? icon;
  final VoidCallback? onTapSuffix;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final customColors = Theme.of(context).extension<CustomColors>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Visibility(
            visible: headerText != null,
            child: Row(
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                  margin: const EdgeInsetsDirectional.only(bottom: 8),
                  child: Text(headerText ?? "",
                      style: styleCaption1(customColors.text50)),
                ),
                Visibility(
                    visible: subHeaderText != null,
                    child: Container(
                      alignment: AlignmentDirectional.topStart,
                      margin: const EdgeInsetsDirectional.only(bottom: 8),
                      // child: Text(" | ${subHeaderText ?? ""}", style: styleBD1EtoR2(customColors.dark70)),
                    ))
              ],
            )),
        Container(
          width: width,
          // height: minLines > 1 ? null : 56,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius:
            borderRadius ?? const BorderRadius.all(Radius.circular(4)),
            // color: enable ? customColors.white : customColors.blue5
          ),
          child: TextFormField(
            onChanged: (text) {
              if (onChanged != null) {
                onChanged!(textInput);
              }
            },
            keyboardAppearance: Brightness.dark,
            onTap: () {
              if (textInput.textController.selection ==
                  TextSelection.fromPosition(TextPosition(
                      offset: textInput.textController.text.length - 1))) {
                textInput.textController.selection = TextSelection.fromPosition(
                    TextPosition(offset: textInput.textController.text.length));
              }
            },
            textAlign: align,
            textDirection: inputType == TextInputType.phone ||
                Get.locale?.languageCode != "fa"
                ? TextDirection.ltr
                : TextDirection.rtl,
            controller: textInput.textController,
            focusNode: textInput.focus,
            style: isEn
                ? TextStyle(
                fontSize: font14,
                color: customColors.darkColor,
                fontFamily: interFontFamily)
                : styleCaption1(
              customColors.darkColor,
            ),
            enabled: enable,
            enableInteractiveSelection: true,
            cursorColor: customColors.darkColor,
            keyboardType: inputType,
            textInputAction: textAction,
            obscuringCharacter: "*",
            obscureText: obscureText,
            onFieldSubmitted: (text) {
              if (nextTextIn != null) {
                FocusScope.of(context).requestFocus(nextTextIn?.focus);
              }
              if (submit != null) {
                submit!(textInput);
              }
            },
            minLines: minLines,
            maxLines: maxLines,
            decoration: InputDecoration(
              contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              suffixIcon: icon != null ? IconButton(
                  icon: Icon(icon!.icon),
                  onPressed: onTapSuffix
              ) : null,
              labelText: placeHolderText,
              floatingLabelStyle: TextStyle(color: customColors.darkColor),
              counterText: '',
              focusedBorder: OutlineInputBorder(
                  borderRadius: borderRadius ??
                      const BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                      width: 1,
                      color: (textInput.error != ""
                          ? customColors.red50
                          : customColors.orange50) ??
                          Colors.black)),
              enabledBorder: OutlineInputBorder(
                borderRadius: borderRadius ??
                    const BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(
                    width: 1,
                    color: (textInput.error != ""
                        ? customColors.red30
                        : customColors.darkColor) ??
                        Colors.black),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: customColors.red50!),
                borderRadius: BorderRadius.circular(4),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: customColors.red50!),
                borderRadius: BorderRadius.circular(4),
              ),
              disabledBorder: OutlineInputBorder(
                  borderRadius: borderRadius ??
                      const BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(
                      width: 1,
                      color: (textInput.error != ""
                          ? customColors.red90
                          : customColors.darkColor) ??
                          Colors.black)),
              // hintText: placeHolderText,
              hintStyle: styleCaption1(customColors.darkColor),
            ),
            maxLength: maxLength,
            validator: validator,
          ),
        ),
        // errorContainer(customColors)
      ],
    );
  }

  // Widget errorContainer(CustomColors customColors) {
  //   return SizedBox(
  //     child: er.isNotEmpty
  //         ? Padding(
  //       padding: const EdgeInsetsDirectional.only(top: 8),
  //       child: Text(
  //         er,
  //         style: styleCaption1(customColors.red80),
  //       ),
  //     )
  //         : Container(),
  //   );
  // }
}
