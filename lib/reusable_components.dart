//ignore: must_be_immutable
import 'package:algoriza_task1/presentation/color_manager.dart';
import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:country_code_picker/country_code_picker.dart';
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
class DefaultTextFormField extends StatelessWidget{
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



  DefaultTextFormField({Key? key,
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
        hintStyle: getRegularStyle(color: hintColor!,fontSize: FontSize.s14),
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

class LoginRegisterTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final String hint;
  final bool isPhone;
  const LoginRegisterTextField({Key? key, required this.controller,
    required this.textInputType, required this.hint,
    this.isPhone = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormField(
      controller: controller,
      textColor: ColorManager.grey,
      inputType: textInputType,
      hint: hint,
      hintColor: ColorManager.lightGrey.withOpacity(0.6),
      rounded: 3,
      focusBorder: Colors.blue.withOpacity(0.5),
      border: ColorManager.lightGrey.withOpacity(0.3),
      textSize: FontSize.s14,
      formatters: [NoLeadingSpaceFormatter()],
      heightPadding: AppPadding.p2,
      prefix: isPhone?
      CountryCodePicker(
        onChanged: print,
        initialSelection: 'EG',
        favorite: const ['+20','EG'],
        showCountryOnly: false,
        showOnlyCountryWhenClosed: false,
        showFlag: false,
        showFlagDialog: true,
        alignLeft: false,
        flagWidth: 20,
        padding: const EdgeInsets.all(0),
        textStyle: getSemiBoldStyle(color: ColorManager.grey,fontSize: FontSize.s14),
      ):null,
    );
  }
}

class TextFieldHead extends StatelessWidget {
  final String name;
  const TextFieldHead({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: getMediumStyle(
              color: ColorManager.lightGrey, fontSize: FontSize.s14),
        ),
        const SizedBox(
          height: AppPadding.p8,
        ),
      ],
    );
  }
}