import 'package:cannabis/constants.dart';
import 'package:cannabis/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool value = false;
  void toggleSwitch() {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(const Size(44, 32)),
      child: LayoutBuilder(
        builder: (context, c) {
          return Stack(
            alignment: Alignment.center,
            children: [
              CustomContainer(
                width: c.maxWidth,
                height: c.maxHeight * 0.5,
                marginHorizontal: c.maxWidth * 0.05,
                color: dark,
                child: const SizedBox(),
              ),
              InkWell(
                onTap: toggleSwitch,
                child: AnimatedContainer(
                  alignment:
                      value ? Alignment.centerLeft : Alignment.centerRight,
                  constraints: BoxConstraints.tight(const Size(44, 32)),
                  duration: const Duration(milliseconds: 500),
                  child: CustomContainer(
                    circular: true,
                    width: c.maxHeight,
                    color: dark,
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: white,
                      size: 12,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
