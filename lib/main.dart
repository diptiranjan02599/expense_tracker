import 'package:expense_tracker/source/screens/expenses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp
//   ]).then((value) {
//     runApp(const MyApp());
//   });
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
        cardTheme: CardTheme(
          color: Colors.lightBlue,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue
        )),
        textTheme: TextTheme(
          // Changing the text style for different categories
          displayLarge: TextStyle(
            fontSize: 32,  // Font size
            color: Colors.black,  // Setting the color
          ),
          bodyLarge: TextStyle(
            fontSize: 16,  // Font size
            color: Colors.black,  // Setting the color
          ),
          bodyMedium: TextStyle(
            fontSize: 14,  // Font size
            color: Colors.black,  // Setting the color
          ),
        ),
      ),
      home: const Expenses(title: 'Flutter Expense Tracker'),
    );
  }
}


