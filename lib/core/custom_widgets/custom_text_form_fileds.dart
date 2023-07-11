import 'package:flutter/material.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';

Widget customTextFormField(
    {IconData? prefixIcon,
    required context,
    required String? labelText,
    TextStyle? labelStyle,
    EdgeInsetsGeometry? contentPadding,
    String? Function(String?)? validator,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    ValueChanged<String>? onFieldSubmitted,
    bool obscureText = false,
    required TextEditingController? controller,
    ValueChanged<String>? onChanged,
    Widget? suffixIcon}) {
  final orientations = MediaQuery.of(context).orientation;
  double height = mediaQueryHeight(context);
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 12),
    padding: const EdgeInsets.all(10),
    child: OrientationBuilder(
      builder: (context, orientation) {
        final deviceOrantation = MediaQuery.of(context).orientation;
        bool isLandscape = deviceOrantation == Orientation.landscape;
        return TextFormField(
          onChanged: onChanged,
          style: TextStyle(
              fontSize: isTablet(context)
                  ? isLandscape
                      ? height * 0.028
                      : height * 0.022
                  : height * 0.022),
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          onFieldSubmitted: onFieldSubmitted,
          decoration: InputDecoration(
            errorStyle: TextStyle(
              fontSize: defultFontSize(context),
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon != null
                ? Icon(
                    prefixIcon,
                    color: Colors.black54,
                    size: isTablet(context)
                        ? isLandscape
                            ? height * 0.04
                            : iconSizeTablet(context)
                        : iconSizeMobile(context),
                  )
                : null,
            labelText: labelText,
            labelStyle: labelStyles(
              fontSize: isTablet(context)
                  ? (orientations == Orientation.landscape
                      ? tabletLandscapeFontSize(context)
                      : tabletFontSize(context))
                  : defultFontSize(context),
            ),
            contentPadding: isTablet(context)
                ? isLandscape
                    ? EdgeInsets.all(
                        paddingTablet30(context),
                      )
                    : EdgeInsets.all(paddingTablet30(context))
                : EdgeInsets.all(paddingMobile10(context)),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            hoverColor: customPrimarySwatch,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(24),
              borderSide: const BorderSide(
                color: customPrimarySwatch,
              ),
            ),
          ),
        );
      },
    ),
  );
}

Widget buildTextFormField(
    {String? lableText,
    BuildContext? context,
    double? contentPadding,
    TextInputAction? textInputAction,
    int? maxLines,
    TextEditingController? controller,
    TextInputType? keyboardType,
    Function(String)? onFieldSubmitted}) {
  double height = mediaQueryHeight(context!);
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: height * 0.015, vertical: height * 0.01),
    child: TextFormField(
      maxLines: maxLines,
      keyboardType: keyboardType,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
            horizontal: height * 0.02, vertical: contentPadding!),
        labelText: lableText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(height * 0.01)),
      ),
    ),
  );
}
