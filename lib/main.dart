import 'package:flutter/material.dart';
import 'core/colors.dart';
import 'screen/imc_home_screen.dart';
import 'core/styles.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("IMC Calculator", style: AppStyles.title),),
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu_rounded), iconSize: 34,),
          backgroundColor: AppColors.primary60,
          foregroundColor: AppColors.textOrIcons,
        ),
        backgroundColor: AppColors.darkPrimary,
        body: ImcHomeScreen(),
      ),
    );
  }
}
