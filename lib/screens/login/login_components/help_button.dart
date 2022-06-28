import 'package:algoriza_task1/presentation/font_manager.dart';
import 'package:algoriza_task1/presentation/styles_manager.dart';
import 'package:algoriza_task1/presentation/values_manager.dart';
import 'package:flutter/material.dart';

class HelpButton extends StatelessWidget {
  const HelpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Row(
        children: [
          Text(
            "Help",
            style: getMediumStyle(
                color: Colors.blue,
                fontSize: FontSize.s12),
          ),
          const SizedBox(width: 1,),
          Container(
              padding: const EdgeInsets.all(0.7),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: const Icon(
                Icons.question_mark,
                size: AppSize.s10,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
