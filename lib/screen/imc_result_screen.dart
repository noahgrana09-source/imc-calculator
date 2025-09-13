import 'package:flutter/material.dart';
import 'package:imc_calculator/core/colors.dart';
import 'package:imc_calculator/core/styles.dart';

class ImcResultScreen extends StatelessWidget {
  final int weight;
  final double height;
  const ImcResultScreen({super.key, required this.height, required this.weight});
// do switch switch(variable){<18 => "hwefuifuiwbh"}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Results", style: AppStyles.title,),
          backgroundColor: AppColors.primary60,
          foregroundColor: AppColors.textOrIcons,
        ),

        backgroundColor: AppColors.darkPrimary,

        body: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final screenWidth = MediaQuery.of(context).size.width;
              final maxWidth = (constraints.maxWidth.isFinite ? constraints.maxWidth : screenWidth).clamp(142.0, 430.0);
              final screenHeight = MediaQuery.of(context).size.height;
              final maxHeight = (constraints.maxHeight.isFinite ? constraints.maxHeight : screenHeight).clamp(255.6, 774.0);
              return Padding(
                padding: EdgeInsets.all(15),
                child: Column(   
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,              
                  children: [
                    Text("Tu resultado", style: AppStyles.subtitle),
                    Container(
                      width: maxWidth,
                      height: maxHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.primary80
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Normal", style: AppStyles.subtitle,),
                          Text("IMC", style: AppStyles.subtitle,),
                          Text("Description", style: AppStyles.subtitle,)
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      style: AppStyles.mainButton,
                      child: Text("Finalizar"),
                    )
                  ],
                ),
              );
            },
          )
        ),
      );
       
    
  }
}