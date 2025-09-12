import 'package:flutter/material.dart';
import '../core/colors.dart';
import '../core/styles.dart';
class HeightSelector extends StatefulWidget {
  final Function(double) onHeightChanged;
  const HeightSelector({super.key, required this.onHeightChanged});
  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double selectedHeight = 170.0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        final screenWidth = MediaQuery.of(context).size.width;
        final maxWidth = (constraints.maxWidth.isFinite ? constraints.maxWidth : screenWidth).clamp(142.0, 430.0);
        return Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            width: maxWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.primary80,
            ),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text("ALTURA", style: AppStyles.subtitle,),
                  Text("${selectedHeight.toStringAsFixed(0)} cm", style: AppStyles.subtitle),
                  Slider(
                    value: selectedHeight,
                    onChanged: (newHeight){
                      setState((){
                        selectedHeight = newHeight;
                        widget.onHeightChanged(selectedHeight);
                      });
                    },
                    min: 130,
                    max: 220,
                    divisions: 90,
                    activeColor: AppColors.accent, 
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}