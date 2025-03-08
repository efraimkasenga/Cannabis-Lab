import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

const dark = Color.fromRGBO(30, 30, 30, 1);
const yellow = Color.fromRGBO(255, 143, 55, 1);
const grey = Color.fromRGBO(189, 186, 183, 1);
const white = Color.fromRGBO(254, 254, 254, 1);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cannabis Lab',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

SizedBox get vgap => const SizedBox(height: 8);
SizedBox get hgap => const SizedBox(width: 8);

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey.withAlpha(100),
      body: Center(
        child: Wrap(
          runSpacing: 16,
          spacing: 16,
          children: [
            Column(
              children: [
                CustomContainer(
                  width: 300,
                  height: 350,
                  color: white.withOpacity(0.2),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: Container(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  'Cannabis Lab',
                                  color: grey,
                                ),
                                CustomText('Sign up'),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  'Log in',
                                  fontSize: 24,
                                ),
                                CustomContainer(
                                  outlined: true,
                                  color: dark,
                                  paddingVertical: 4,
                                  paddingHorizontal: 8,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.facebook,
                                        size: 10,
                                      ),
                                      CustomText(
                                        'Facebook',
                                        fontSize: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const CustomTextField(
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      size: 10,
                                      color: dark,
                                    ),
                                    label: 'e-mail address'),
                                vgap,
                                const CustomTextField(
                                    label: 'password',
                                    prefixIcon: Icon(
                                      Icons.key_rounded,
                                      size: 10,
                                      color: dark,
                                    ),
                                    suffix: CustomContainer(
                                        width: 60,
                                        marginAll: 8,
                                        color: white,
                                        child: CustomText('i forgot',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600))),
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: CustomText(
                                    'For use by adults only (18 years of age and older. Keep out of reach of children and pets in case of accidental ingestion contact our hotline',
                                    fontSize: 10,
                                  ),
                                ),
                                hgap,
                                SizedBox(
                                  height: 32,
                                  width: 44,
                                  child: LayoutBuilder(builder: (context, c) {
                                    return Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomContainer(
                                            width: c.maxWidth,
                                            height: c.maxHeight * 0.5,
                                            color: dark,
                                            child: const SizedBox()),
                                        Positioned(
                                          right: 0,
                                          height: c.maxHeight,
                                          child: CustomContainer(
                                              circular: true,
                                              width: c.maxHeight,
                                              color: dark,
                                              child: const Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color: white,
                                                size: 12,
                                              )),
                                        )
                                      ],
                                    );
                                  }),
                                )
                              ],
                            ),
                            const CustomText(
                              'Please consume responsibly!',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                vgap,
                const CustomContainer(
                  width: 300,
                  paddingAll: 16,
                  color: dark,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomText(
                            'New in',
                            color: white,
                            fontSize: 24,
                          ),
                          CustomText(
                            'C.Lab Joints',
                            color: grey,
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: CustomText(
                            'Discover',
                            color: white,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            CustomContainer(
              width: 300,
              height: 466,
              color: white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const CustomContainer(
                      width: 150,
                      height: 150,
                      color: yellow,
                      circular: true,
                      child: SizedBox()),
                  Row(
                    children: [
                      Expanded(
                        child: CustomContainer(
                          paddingAll: 16,
                          marginAll: 8,
                          color: grey.withOpacity(0.2),
                          clipBehavior: Clip.antiAlias,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                  child: Container(
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                              const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        'Thu',
                                        fontSize: 32,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      CustomText(
                                        '24th',
                                        fontSize: 32,
                                        color: grey,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText('18 PM', fontSize: 12),
                                      CustomText('Kerkstraat 128',
                                          fontSize: 12),
                                      CustomText('Amsterdam', fontSize: 12),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(Icons.incomplete_circle_rounded),
                                      CustomText('C.Lab'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomContainer(
                          paddingAll: 16,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomText('Grand opening'),
                                  CustomText('New store'),
                                ],
                              ),
                              SizedBox(
                                width: 96,
                                height: 32,
                                child: LayoutBuilder(builder: (context, c) {
                                  return Stack(
                                    alignment: Alignment.center,
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      CustomContainer(
                                          height: 16,
                                          width: c.maxWidth,
                                          color: dark,
                                          child: const SizedBox()),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomContainer(
                                              width: c.maxWidth * 0.65,
                                              paddingAll: 8,
                                              color: dark,
                                              child: const CustomText('Join in',
                                                  fontSize: 10, color: white)),
                                          const Spacer(),
                                          CustomContainer(
                                              width: c.maxHeight,
                                              circular: true,
                                              height: c.maxHeight,
                                              color: dark,
                                              child: const Icon(
                                                Icons
                                                    .arrow_forward_ios_outlined,
                                                color: white,
                                                size: 12,
                                              )),
                                        ],
                                      ),
                                    ],
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final Widget? suffix;
  final Widget? prefixIcon;
  const CustomTextField(
      {super.key, required this.label, this.prefixIcon, this.suffix});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        style:
            GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
            isDense: true,
            labelStyle: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.w600),
            fillColor: grey.withAlpha(100),
            filled: true,
            suffixIcon: suffix,
            prefixIcon: CustomContainer(
                marginAll: 8,
                width: 24,
                height: 24,
                circular: true,
                color: white.withAlpha(100),
                child: prefixIcon ?? const SizedBox.shrink()),
            labelText: label,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(24)))),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color? color;
  final bool outlined, circular;
  final Widget child;
  final double? height, width;
  final Clip clipBehavior;
  final double left,
      top,
      right,
      bottom,
      paddingAll,
      paddingHorizontal,
      paddingVertical,
      mleft,
      mtop,
      mright,
      mbottom,
      marginAll,
      marginHorizontal,
      marginVertical;

  const CustomContainer({
    super.key,
    this.color,
    this.height,
    this.width,
    this.circular = false,
    this.outlined = false,
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.paddingAll = 0,
    this.paddingHorizontal = 0,
    this.paddingVertical = 0,
    this.mbottom = 0,
    this.mleft = 0,
    this.mright = 0,
    this.mtop = 0,
    this.marginAll = 0,
    this.marginHorizontal = 0,
    this.marginVertical = 0,
    this.clipBehavior = Clip.none,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: clipBehavior,
      height: height,
      width: width,
      padding: paddingAll != 0
          ? EdgeInsets.all(paddingAll)
          : paddingHorizontal != 0 || paddingVertical != 0
              ? EdgeInsets.symmetric(
                  horizontal: paddingHorizontal, vertical: paddingVertical)
              : EdgeInsets.fromLTRB(left, top, right, bottom),
      margin: marginAll != 0
          ? EdgeInsets.all(marginAll)
          : marginHorizontal != 0 || marginVertical != 0
              ? EdgeInsets.symmetric(
                  horizontal: marginHorizontal, vertical: marginVertical)
              : EdgeInsets.fromLTRB(mleft, mtop, mright, mbottom),
      decoration: BoxDecoration(
        color: outlined ? null : color,
        border: outlined
            ? Border.all(color: color ?? Colors.transparent, width: 0.5)
            : null,
        shape: circular ? BoxShape.circle : BoxShape.rectangle,
        borderRadius: !circular ? BorderRadius.circular(24) : null,
      ),
      child: Center(child: child),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const CustomText(this.text,
      {super.key, this.fontSize, this.color, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
