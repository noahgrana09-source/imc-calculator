import 'package:flutter/material.dart';
import 'package:imc_calculator/core/colors.dart';

class GenderSelect extends StatefulWidget {
  const GenderSelect({super.key});

  @override
  State<GenderSelect> createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  String? selectedGender;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        final screenWidth = MediaQuery.of(context).size.width;
        final maxWidth = constraints.maxWidth.isFinite ? constraints.maxWidth : screenWidth;
        final bool useColumnLayout = maxWidth < 300;
        final spacePerButton = (maxWidth -60) / 2;
        final buttonDiameter = spacePerButton.clamp(56.0, 200.0);
        final iconDiameter = buttonDiameter * 0.6;
        return useColumnLayout
        ?
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildGenderButton(buttonDiameter, iconDiameter, Icons.female, "female"),
            _buildGenderButton(buttonDiameter, iconDiameter, Icons.male, "male"),
          ],
        )
        :
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildGenderButton(buttonDiameter, iconDiameter, Icons.female, "female"),
            _buildGenderButton(buttonDiameter, iconDiameter, Icons.male, "male")
          ],
        )
        ;
      }
    );
  }
  Widget _buildGenderButton(double size, double iconSize, IconData icon, String genderValue){

    Widget genderButton = FloatingActionButton(
      heroTag: genderValue,
      onPressed: (){setState(() {
        selectedGender = genderValue;
      });},
      backgroundColor: genderValue == selectedGender ? AppColors.primary : AppColors.primary80,
      child: Icon(icon, size: iconSize, color: AppColors.darkPrimary,),
    );

    return Padding(
      padding: EdgeInsets.all(15),
      child: SizedBox(
        width: size,
        height: size,
        child: genderButton,
      )
    );    
  }
}