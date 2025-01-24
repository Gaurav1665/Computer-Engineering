import 'package:flutter/material.dart';
import 'package:practical/Extra/screenSpliting.dart';
import 'package:practical/Lab_10/p10_1.dart';
import 'package:practical/Lab_10/p10_2.dart';
import 'package:practical/Lab_11/p11_1.dart';
import 'package:practical/Lab_11/p11_2.dart';
import 'package:practical/Lab_11/p11_3.dart';
import 'package:practical/Lab_11/p11_4.dart';
import 'package:practical/Lab_12/p12_3.dart';
import 'package:practical/Lab_12/p12_1.dart';
import 'package:practical/Lab_12/p12_2.dart';
import 'package:practical/Lab_12/p12_4.dart';
import 'package:practical/Lab_13/p13_3.dart';
import 'package:practical/Lab_13/p13_1.dart';
import 'package:practical/Lab_13/p13_4.dart';
import 'package:practical/Lab_13/p13_5.dart';
import 'package:practical/Lab_14/p14_2.dart';
import 'package:practical/Lab_6/p6_1.dart';
import 'package:practical/Lab_6/p6_2.dart';
import 'package:practical/Lab_6/p6_3.dart';
import 'package:practical/Lab_7/p7_1.dart';
import 'package:practical/Lab_7/p7_2.dart';
import 'package:practical/Lab_7/p7_3.dart';
import 'package:practical/Lab_7/p7_4.dart';
import 'package:practical/Lab_7/p7_5.dart';
import 'package:practical/Lab_8/p8_1.dart';
import 'package:practical/Lab_8/p8_2.dart';
import 'package:practical/Lab_8/p8_3.dart';
import 'package:practical/Lab_8/p8_4.dart';
import 'package:practical/Lab_9/p9_3.dart';
import 'package:practical/Lab_14/ExPr_14_1.dart';
import 'package:practical/List_CRUD/UI_List.dart';

import 'Lab_9/navigate_screen.dart';
import 'Lab_14/ExPr_14_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/Page1',
      routes: {
        '/Page1': (context) => const NamedRoute(),
        '/Page2': (context) => const NamedroutePreavious()
      },
      debugShowCheckedModeBanner: false,
      // home: HorizontalScreenParts(),
      // home: VerticalScreenParts(),
      // home: EqualParts(),
      // home: FlexDemo(),
      // home: TextDemo(),
      // home: CustomTextWidget(),
      // home: PrintValueFromTextField(),
      // home: PrintValueFromDecoratedTextField(),
      // home: PrintValueOnScreen(),
      // home: ImageDemo(),
      // home: TextOverImage(),
      // home: BirthdayCard(),
      // home: RollTheDice(),
      // home: TabViewDemo(),
      // home: NavigationDrawerDemo(),
      // home: ActionBarAndDialog(),
      // home: LoginScreen(),
      // home: LoginScreenValidation(),
      // home: screenSpliting(),
      // home:NavigateScreen()
      // home: CitiesListview()
      // home: ImageGridview(),
      // home: TextAndImageGridview(),
      // home: ChangingView(),
      // home: SingleChildScrollWidget(),
      // home: ScrollableListviewAadGridview(),
      // home: PrintSystemDate(),
      // home: PrintPickedDate(),
      // home: BottomSheetDemo(),
      // home: NavigationDrawerDemo(),
      // home: BottomNavBar(),
      // home: CustomFormValidation(),
      //home: BottomSheetDialogDemo(),
      home:  NamedRoute(),
      // home: UiList(),
    );
  }
}
