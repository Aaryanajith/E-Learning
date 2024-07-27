import 'package:e_learning_mobile/features/curation/presentation/curation_widgets.dart/curation_card.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurationChoiceView extends ConsumerWidget {
  const CurationChoiceView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const ELearningAppBar(
        title: "Select a course", 
        issplash: false, 
        backButton: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Curated for you",
                style: TextStylesClass.h6,
              ),
              SizedBox(height: 32.h),
              const CurationCard(
                isForYouCard: true,
              ),
              SizedBox(height: 32.h),
              Text(
                "Explore Other Courses",
                style: TextStylesClass.h6,
              ),
              SizedBox(height: 32.h),
              const CurationCard(
                isForYouCard: false,
              ),
              SizedBox(height: 16.h),
              const CurationCard(
                isForYouCard: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
