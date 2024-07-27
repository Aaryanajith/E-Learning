import 'package:flutter_riverpod/flutter_riverpod.dart';

class LiveClassProvider extends StateNotifier<DateTime> {
  final Map<DateTime, List<LiveClass>> _schedule = {};

  LiveClassProvider() : super(DateTime.now()) {
    initSchedule();
  }

  void setSelectedDate(DateTime date) {
    state = date;
  }

  Future<List<LiveClass>> fetchLiveClasses(DateTime date) async {
    if (_schedule.containsKey(date)) {
      final liveClasses = _schedule[date]!;
      return liveClasses;
    } else {
      return [];
    }
  }

// hardcoded data
 void initSchedule() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final tomorrow = today.add(const Duration(days: 1));

    _schedule[today] = [];
    _schedule[tomorrow] = [
      LiveClass(subject: 'Interview Skills', time: '7:00 a.m.'),
    ];
  }
}

final liveClassProvider = StateNotifierProvider<LiveClassProvider, DateTime>((ref) {
  return LiveClassProvider();
});


class LiveClass {
  final String subject;
  final String time;

  LiveClass({required this.subject, required this.time});
}