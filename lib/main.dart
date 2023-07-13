import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_builder/core/utils/constants/contstants.dart';
import 'package:resume_builder/features/add_more_section/presentation/provider/switch_provider.dart';
import 'package:resume_builder/features/create_new_section_page/presentation/provider/create_new_section_provider.dart';
import 'package:resume_builder/features/homepage/presentation/pages/homepage.dart';
import 'package:resume_builder/features/homepage/presentation/provider/homepage_provider.dart';

void main() {
  runApp(const ResumerBulder());
}

class ResumerBulder extends StatelessWidget {
  const ResumerBulder({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Homeprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SwitchProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CreateNewSectionProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          primaryColor: Colors.deepOrange,
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(color: Colors.white),
            color: Colors.deepOrange,
            centerTitle: true,
            scrolledUnderElevation: 20,
          ),
          bottomAppBarTheme: const BottomAppBarTheme(
            elevation: 3,
            color: Colors.deepOrange,
          ),
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            bodySmall: TextStyle(
              fontSize: mediaQueryHeight(context) * 0.02,
            ),
          ),
        ),
        home: const Homepage(),
      ),
    );
  }
}
