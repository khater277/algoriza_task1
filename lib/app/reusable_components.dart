//ignore: must_be_immutable
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultElevatedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double rounded;
  final double height;
  final double width;
  final VoidCallback onPressed;
  const DefaultElevatedButton({Key? key, required this.child, required this.color, required this.rounded,
    required this.height, required this.width, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          primary:color,
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.circular(rounded),
          ),
          minimumSize: Size(width,height)
      ),
      child:child,
    );
  }
}

// ignore: must_be_immutable
class DefaultOutLinedButton extends StatelessWidget {
  final Widget child;
  final double rounded;
  final double height;
  final double width;
  final VoidCallback onPressed;
  Color? borderColor;
  DefaultOutLinedButton({Key? key, required this.child, required this.rounded,
    required this.height, required this.width, required this.onPressed,this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed:onPressed,
      style: OutlinedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(rounded),
        ),
        minimumSize: Size(width,height),
        side: BorderSide(color: borderColor??const Color(0xFF000000)),
      ),
      child:child,
    );
  }
}


class NoLeadingSpaceFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    if (newValue.text.startsWith(' ')) {
      final String trimedText = newValue.text.trimLeft();

      return TextEditingValue(
        text: trimedText,
        selection: TextSelection(
          baseOffset: trimedText.length,
          extentOffset: trimedText.length,
        ),
      );
    }
    return newValue;
  }
}

//ignore: must_be_immutable
class DefaultTextFormFiled extends StatelessWidget{
  final TextEditingController? controller;
  final Color? textColor;
  final double textSize;
  final TextInputType? inputType;
  final String? hint;
  final Color? hintColor;
  final Color focusBorder;
  final Color border;
  final String? validateText;
  final double rounded;
  final List<TextInputFormatter> formatters;
  Color? fillColor;
  String? label;
  bool? autoFocus;
  Widget? prefix;
  Widget? suffix;
  double? heightPadding;
  double? widthPadding;
  Color? cursorColor;
  double? cursorHeight;
  bool? isPassword;
  int? maxLines;



  DefaultTextFormFiled({Key? key,
    required this.controller,
    required this.textColor,
    required this.inputType,
    required this.hint,
    required this.hintColor,
    required this.rounded,
    required this.focusBorder,
    required this.border,
    required this.textSize,
    required this.formatters,
    this.fillColor,
    this.label,
    this.autoFocus,
    this.isPassword,
    this.validateText,
    this.cursorColor,
    this.cursorHeight,
    this.heightPadding,
    this.widthPadding,
    this.suffix,
    this.prefix,
    this.maxLines,
  }
      ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: formatters,
      autofocus: autoFocus??false,
      controller: controller,
      cursorColor: cursorColor,
      maxLines: maxLines??1,
      validator: (value) {
        if (value!.isEmpty) {
          if(validateText!=null) {
            return validateText!;
          } else {
            return "can't be empty";
          }
        }
        return null;
      },
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
          color: textColor,
          fontSize: textSize,
          letterSpacing: 1
      ),
      cursorHeight: cursorHeight,
      keyboardType: inputType,
      obscureText: isPassword==null?false:isPassword!,
      decoration: InputDecoration(
        filled: fillColor==null?false:true,
        fillColor: fillColor,
        hintText: hint,
        hintStyle: TextStyle(
          color: hintColor,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: heightPadding==null?AppPadding.p18:heightPadding!,
            horizontal: widthPadding==null?AppPadding.p10:widthPadding!),
        prefixIcon: prefix,
        suffixIcon: suffix,
        errorStyle: TextStyle(
            color: Colors.red.withOpacity(0.6)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(rounded),
            borderSide: BorderSide(
              color: Colors.red.withOpacity(0.6),
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(rounded),
            borderSide: BorderSide(
              color: Colors.red.withOpacity(0.6),
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(rounded),
            borderSide: BorderSide(
              color: border,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(rounded),
            borderSide: BorderSide(
              color: focusBorder,
            )),
        labelText: label,
        labelStyle: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}