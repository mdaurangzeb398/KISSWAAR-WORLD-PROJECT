// 📛 Profile Name: newsletter_model.dart
// ✅ Copy this profile name in GitHub file creation form

class Newsletter {
  final String subject;
  final String body;
  final DateTime sentDate;

  Newsletter({
    required this.subject,
    required this.body,
    required this.sentDate,
  });

  factory Newsletter.fromJson(Map<String, dynamic> json) {
    return Newsletter(
      subject: json['subject'] ?? '',
      body: json['body'] ?? '',
      sentDate: DateTime.parse(json['sentDate'] ?? DateTime.now().toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'subject': subject,
      'body': body,
      'sentDate': sentDate.toIso8601String(),
    };
  }
}
