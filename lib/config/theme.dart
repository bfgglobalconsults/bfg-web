import "package:flutter/material.dart";

class AppColors {
  static const primaryColor = Color.fromARGB(255, 34, 76, 189);
  static const secondaryColor = Color.fromARGB(255, 251, 74, 30);
  static const primaryLight = Color.fromARGB(255, 103, 131, 207);
  static const backgroundDark = Color(0xFF1D1E25);
  static const scaffoldColor = Color.fromARGB(255, 250, 249, 247);
  static const white = Color(0xFFFFFFFF);
  static const error = Color(0xFFF44336);
  static const borderColor = Color(0xFFB5B5B5);
}

class AppTheme {
  AppTheme._();

  static ThemeData _baseTheme(BuildContext context) => ThemeData(
        fontFamily: Fonts.primary,
        primaryColor: AppColors.primaryColor,
        indicatorColor: AppColors.primaryColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            elevation: 0,
            padding: const EdgeInsets.symmetric(
              vertical: Insets.xs,
              horizontal: Insets.md,
            ),
            shadowColor: Colors.transparent,
            shape: const RoundedRectangleBorder(
              borderRadius: Corners.xsBorder,
            ),
            backgroundColor: AppColors.primaryColor,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.backgroundDark,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.backgroundDark,
          type: BottomNavigationBarType.fixed,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.primaryColor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.primaryColor,
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: AppColors.backgroundDark,
          elevation: 0.0,
          centerTitle: false,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.primaryColor,
          textTheme: ButtonTextTheme.accent,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
          contentPadding:
              EdgeInsets.symmetric(vertical: Insets.sm, horizontal: 10.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.error),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
          labelStyle: TextStyle(color: AppColors.primaryColor),
          hintStyle: TextStyle(color: AppColors.primaryColor),
        ),
      );

  static ThemeData defaultTheme(BuildContext context) =>
      _baseTheme(context).copyWith(
        brightness: Brightness.light,
      );
}

class Fonts {
  static const primary = "Baskervville";
}

class Insets {
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double bottomOffset = 64;
}

class Corners {
  static const Radius xsRadius = Radius.circular(Insets.xs);
  static const BorderRadius xsBorder = BorderRadius.all(xsRadius);

  static const Radius smRadius = Radius.circular(Insets.sm);
  static const BorderRadius smBorder = BorderRadius.all(smRadius);

  static const Radius mdRadius = Radius.circular(Insets.md);
  static const BorderRadius mdBorder = BorderRadius.all(mdRadius);

  static const Radius lgRadius = Radius.circular(Insets.lg);
  static const BorderRadius lgBorder = BorderRadius.all(lgRadius);

  static const Radius xlRadius = Radius.circular(50);
  static const BorderRadius xlBorder = BorderRadius.all(xlRadius);
}

class FontSizes {
  static const double xs = 9;
  static const double sm = 13;
  static const double md = 15;
  static const double lg = 18;
}

class IconSizes {
  static const double xs = 15;
  static const double sm = 18;
  static const double md = 24;
  static const double lg = 32;
}

class TextStyles {
  ///h3
  static const TextStyle h1 =
      TextStyle(fontSize: 32, fontWeight: FontWeight.w900);

  ///h2
  static const TextStyle h2 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700);

  ///big-title
  static const TextStyle h3 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w700);

  static const TextStyle h4 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w700);

  static const TextStyle h5 =
      TextStyle(fontSize: 13, fontWeight: FontWeight.w700);

  ///title
  static const TextStyle t1 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w700);

  ///paragraph
  static const TextStyle t2 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff1D1E25));

  ///small-text
  static const TextStyle t3 = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff808D9E));

  ///big-button
  static const TextStyle b1 =
      TextStyle(fontWeight: FontWeight.w700, fontSize: 14);

  ///small-button
  static const TextStyle b2 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 12);
}
