// 📛 Profile Name: rewards_model.dart
// ✅ Copy this profile name in GitHub file creation form

class Reward {
  final String title;
  final int points;
  final String status; // earned, claimed, pending

  Reward({
    required this.title,
    required this.points,
    required this.status,
  });

  factory Reward.fromJson(Map<String, dynamic> json) {
    return Reward(
      title: json['title'] ?? '',
      points: json['points'] ?? 0,
      status: json['status'] ?? 'pending',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'points': points,
      'status': status,
    };
  }
}
