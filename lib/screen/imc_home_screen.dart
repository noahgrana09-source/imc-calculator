import 'package:flutter/material.dart';
import 'package:imc_calculator/screen/imc_result_screen.dart';
import '../components/gender.dart';
import '../components/height_selector.dart';
import '../components/number_selector.dart';
import '../core/styles.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});
  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int weightValue = 60;
  double selectedHeight = 170.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GenderSelect(),
          HeightSelector(onHeightChanged: (value){
            selectedHeight = value;
          },),
          NumberSelector(onVariableChanged: (value){
            setState(() {
              weightValue = value;
            });
          },),
          SizedBox(
            width: ((MediaQuery.of(context).size.width)-30).clamp(142, 430) ,
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImcResultScreen(weight: weightValue, height: selectedHeight))
                );
              },
              style: AppStyles.mainButton,
              child: Text("Calcular", style: AppStyles.subtitle,),
            ),
          )
        ],
      )     
    );
  }
}