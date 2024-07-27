import 'package:flutter_riverpod/flutter_riverpod.dart';

class IndexNotifier extends StateNotifier<int> {
  IndexNotifier() : super(0);

  void setSelectedIndex(int index) {
    state = index;
  }
}

final indexProvider = StateNotifierProvider<IndexNotifier, int>((ref) {
  return IndexNotifier();
});
