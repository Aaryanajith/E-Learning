import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/bottom_button.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_mobile/resources/theme.dart';

class PlanDetails extends StatelessWidget {
  final String planName;
  final String price;
  final String description;
  final List<String> features;
  final Color? planTheme;
  final LinearGradient? gradient;
  final Color? textColor;

  const PlanDetails({
    required this.planName, 
    required this.price,
    required this.description, 
    required this.features , 
    this.planTheme, this.gradient, 
    this.textColor,
    Key? key
    }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        decoration: const BoxDecoration(
          color: ColorsClass.bg,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                planName,
                style: const TextStyle(
                  color: ColorsClass.primaryTheme,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height : ScreenUtils.h1(context)),
              Text(
                price,
                style: TextStylesClass.h4,
              ),
              SizedBox(height : ScreenUtils.h2(context)),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              SizedBox(height : ScreenUtils.h2(context)),
              Text(
                description,
                style: TextStylesClass.customize(
                  TextStylesClass.p1 , 
                  color: ColorsClass.lightTextGrey, 
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height : ScreenUtils.h3(context)),
              Text(
                'Features',
                style: TextStylesClass.h6,
              ),
              SizedBox(height : ScreenUtils.h1(context)),
               Expanded(
                child: ListView.builder(
                  itemCount: features.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.check_circle_outline, color: ColorsClass.primaryTheme),
                      title: Text(
                        features[index], 
                        style: TextStylesClass.customize(
                          TextStylesClass.p1 , 
                          color: ColorsClass.lightTextGrey,
                          fontWeight: FontWeight.w400
                        )),
                    );
                  },
                ),
              ),
              BottomButton(
                text: "Select $planName",
                borderRadius: 12,
                useGradient: gradient != null ? true : false,
                backgroundColour: planTheme,
                textColor : textColor ?? ColorsClass.textGrey,
                height: 60,
                width: double.infinity,
                onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}