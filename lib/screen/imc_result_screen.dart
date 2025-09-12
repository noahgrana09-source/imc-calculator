import 'package:flutter/material.dart';
import 'package:imc_calculator/core/colors.dart';
import 'package:imc_calculator/core/styles.dart';

class ImcResultScreen extends StatelessWidget {
  final int weight;
  final double height;
  const ImcResultScreen({super.key, required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Results", style: AppStyles.title,),),
          backgroundColor: AppColors.primary60,
          foregroundColor: AppColors.textOrIcons,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Text("nownfw"),
          ),
        ),
      );
       
    
  }
}