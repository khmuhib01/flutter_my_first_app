import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String routeName;
  final dynamic controller; // Accepts any controller with navigateToPage

  // Customisation options
  final Color? color;
  final Color? textColor;
  final IconData? icon;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final double? elevation;
  final OutlinedBorder? shape;

  const CustomButton({
    super.key,
    required this.text,
    required this.routeName,
    required this.controller,
    this.color,
    this.textColor,
    this.icon,
    this.fontSize,
    this.fontWeight,
    this.borderRadius,
    this.padding,
    this.margin,
    this.elevation,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ElevatedButton.icon(
        onPressed: () => controller.navigateToPage(context, routeName),
        icon:
            Icon(icon ?? Icons.arrow_forward, color: textColor ?? Colors.white),
        label: Text(
          text,
          style: TextStyle(
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight ?? FontWeight.bold,
            color: textColor ?? Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Colors.blue,
          foregroundColor: textColor ?? Colors.white,
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: shape ??
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8),
              ),
          elevation: elevation ?? 4,
        ),
      ),
    );
  }
}
