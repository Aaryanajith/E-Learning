import 'package:flutter_riverpod/flutter_riverpod.dart';

class Plan {
  final String planName;
  final String price;
  final String description;
  final List<String> features;

  Plan({
    required this.planName,
    required this.price,
    required this.description,
    required this.features,
  });
}

final plansProvider = FutureProvider<List<Plan>>((ref) async {
  // Currently plan details are hardcoded
  return [
    Plan(
      planName: 'Basic',
      price: '₹ 1,600',
      description : 'Self-paced and self-guided learning',
      features:const [
        '6 month validity on lessons, quizzes, and notes',
        '8 live sessions with Jane (1/week)',
        '24 live conversations (3/week)',
        '24 live sessions with mentor batch (3/week)',
        '8 week access to AI speech practice feature (with add-on options)',
      ],
    ),
    Plan(
      planName: 'Gold',
      price: '₹ 5,500',
      description: 'Self-paced with batchwise mentor support',
      features: const [
        '6 month validity on lessons, quizzes, and notes',
        '16 live sessions with Jane (1/week)',
        '24 live conversations (3/week)',
        '24 live sessions with mentor batch (3/week)',
        '8 week access to AI speech practice feature (with add-on options)',
      ],
    ),
    Plan(
      planName: 'Platinum',
      price: '₹ 12,000',
      description: 'Self-paced with one-on-one mentor support',
      features: const [
        '6 month validity on lessons, quizzes, and notes',
        '10 live sessions with Jane (1/week)',
        '30 live conversations (3/week)',
        '30 live sessions with mentor batch',
        '6 month access to AI speech practice feature (with add-on options)',
      ],
    ),
  ];
});