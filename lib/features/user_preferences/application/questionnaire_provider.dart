import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define the model for the questions
class OnboardingQuestion {
  final String title;
  final String imagePath;
  final String question;
  final List<String> options;
  final bool isMultiSelect;

  OnboardingQuestion({
    required this.title,
    required this.imagePath,
    required this.question,
    required this.options,
    this.isMultiSelect = false,
  });
}

final onboardingQuestionsProvider = FutureProvider<List<OnboardingQuestion>>((ref) async {
  // Currently hardcoded
  return [
    OnboardingQuestion(
      title: 'Find your perfect course',
      imagePath: 'lib/assets/userPref_1.png',
      question: 'What would you like to learn?',
      options: ["English", "Landing a job", "Both"],
      isMultiSelect: false,
    ),
    OnboardingQuestion(
      title: 'Find your perfect course',
      imagePath: 'lib/assets/userPref_2.png',
      question: 'What is your learning preference?',
      options: ["English for myself", "English for my work", "To improve my pronunciation"],
      isMultiSelect: true,
    ),
    OnboardingQuestion(
      title: 'Find your perfect course',
      imagePath: 'lib/assets/userPref_2.png',
      question: 'What do you currently do to learn English?',
      options: ["Read Books", "Watch English videos", "Record myself and listen"],
      isMultiSelect: true,
    ),
    OnboardingQuestion(
      title: 'Find your perfect course',
      imagePath: 'lib/assets/userPref_3.png',
      question: 'How long have you been trying to learn?',
      options: ["Up to 3 months", "3 - 6 months", "6 - 12 months", "More than a year"],
      isMultiSelect: false,    
    ),
    OnboardingQuestion(
      title: 'Find your perfect course',
      imagePath: 'lib/assets/userPref_4.png',
      question: 'What is your skill level?',
      options: ["Beginner", "Intermediate", "Advanced"],
      isMultiSelect: false,
    ),
  ];
});
