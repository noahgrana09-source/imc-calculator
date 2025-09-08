import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/styles.dart';
class NumberSelector extends StatefulWidget {
  const NumberSelector({super.key});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  int weightValue = 60;
  int ageValue = 20;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        final screenWidth = MediaQuery.of(context).size.width;
        final maxWidth = constraints.maxWidth.isFinite ? constraints.maxWidth : screenWidth;
        final bool useColumnLayout = maxWidth < 300;
        final spacePerCont = (maxWidth - 60) / 2;
        final contDiameter = spacePerCont.clamp(56.0, 200.0);

        return useColumnLayout
        ?
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNumberSelector("PESO", weightValue, contDiameter, (newValue){
              setState(() {
                weightValue = newValue;
              });}),
            _buildNumberSelector("EDAD", ageValue, contDiameter, (newValue){
              setState(() {
                ageValue = newValue;
              });
            })
          ],
        )
        :
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             _buildNumberSelector("PESO", weightValue, contDiameter, (newValue){
              setState(() {
                weightValue = newValue;
              });}),
            _buildNumberSelector("EDAD", ageValue, contDiameter, (newValue){
              setState(() {
                ageValue = newValue;
              });
            })
          ],
        )
        ;
      },
    );
  }
  Widget _buildNumberSelector(String title, int value, double size, Function(int) function){
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary80,
          borderRadius: BorderRadius.circular(16)
        ),
        width: size,
        height: size,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: AppStyles.subtitle,),
            Text(value.toString(), style: AppStyles.subtitle,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: size * 0.3,
                  height: size * 0.3,
                  child: 
                    IconButton(
                      onPressed: (){
                        if (value > 0){function(value - 1);}
                      },                                                                                          
                      icon: Icon(Icons.remove),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(AppColors.primary),
                      ),
                      color: AppColors.darkPrimary, 
                      iconSize: size * 0.18,           
                    ),
                ),
                SizedBox(
                  width: size * 0.3,
                  height: size * 0.3,
                  child: 
                    IconButton(
                      onPressed: (){
                        function(value + 1);
                      },
                      icon: Icon(Icons.add),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(AppColors.primary),
                      ),
                      color: AppColors.darkPrimary,  
                      iconSize: size * 0.18,          
                    ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}