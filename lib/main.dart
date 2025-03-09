import 'dart:ui';

import 'package:cannabis/constants.dart'; 
import 'package:cannabis/widgets/export_widgets.dart'; 
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cannabis Lab',
      debugShowCheckedModeBanner: false,
      scrollBehavior: const ScrollBehavior().copyWith(scrollbars: false),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    super.key,
  });
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover, opacity: 0.5)),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Wrap(
              runSpacing: defaultSpacing,
              spacing: defaultSpacing,
              children: [
                Wrap(
                  direction: Axis.vertical,
                  spacing: defaultSpacing,
                  children: [
                    CustomContainer(
                      width: 300,
                      height: 350,
                      // color: white.withOpacity(0.2),
                      clipBehavior: Clip.antiAlias,
                      child: LayoutBuilder(builder: (context, c) {
                        return Stack(
                          children: [
                            Positioned.fill(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: smallTextSize,
                                    sigmaY: smallTextSize),
                                child: Container(
                                  color: Colors.transparent,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(largeTextSize),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        'Cannabis Lab',
                                        color: white,
                                      ),
                                      CustomText('Sign up'),
                                    ],
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        'Log in',
                                        fontSize: largeTextSize,
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
                                              size: smallTextSize,
                                            ),
                                            SizedBox(width: 4),
                                            CustomText(
                                              'Facebook',
                                              fontSize: smallTextSize,
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
                                            size: smallTextSize,
                                            color: dark,
                                          ),
                                          label: 'e-mail address'),
                                      const SizedBox(height: defaultSpacing),
                                      CustomTextField(
                                        label: 'password',
                                        prefixIcon: const Icon(
                                          Icons.key_rounded,
                                          size: smallTextSize,
                                          color: dark,
                                        ),
                                        suffix: InkWell(
                                          onTap: () {},
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(
                                                  defaultSpacing * 1.5)),
                                          child: const CustomContainer(
                                            width: 60,
                                            marginAll: 8,
                                            color: white,
                                            child: CustomText(
                                              'i forgot',
                                              fontSize: smallTextSize,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Row(
                                    children: [
                                      Flexible(
                                        child: CustomText(
                                          'For use by adults only (18 years of age and older. Keep out of reach of children and pets in case of accidental ingestion contact our hotline',
                                          fontSize: smallTextSize,
                                        ),
                                      ),
                                      SizedBox(width: defaultSpacing),
                                      CustomSwitch()
                                    ],
                                  ),
                                  const CustomText(
                                    'Please consume responsibly!',
                                    fontSize: smallTextSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                    const CustomContainer(
                      width: 300,
                      paddingAll: defaultSpacing,
                      color: dark,
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              CustomText(
                                'New in',
                                color: white,
                                fontSize: largeTextSize,
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
                              paddingAll: defaultSpacing,
                              marginAll: 8,
                              radius: defaultSpacing,
                              color: grey.withOpacity(0.2),
                              clipBehavior: Clip.antiAlias,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: smallTextSize,
                                          sigmaY: smallTextSize),
                                      child: Container(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                  ),
                                  const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            'Thu',
                                            fontSize: xlargeTextSize,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          CustomText(
                                            '24th',
                                            fontSize: xlargeTextSize,
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
                              paddingAll: defaultSpacing,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                              height: defaultSpacing,
                                              width: c.maxWidth,
                                              color: dark,
                                              marginHorizontal:
                                                  c.maxWidth * 0.05,
                                              child: const SizedBox()),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomContainer(
                                                  width: c.maxWidth * 0.65,
                                                  paddingAll: 8,
                                                  color: dark,
                                                  child: const CustomText(
                                                      'Join in',
                                                      fontSize: smallTextSize,
                                                      color: white)),
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
        ),
      ),
    );
  }
}
