// 📛 Profile Name: user_model.dart
// ✅ Copy this profile name in GitHub file creation form

class KisswaarUser {
  final String id;
  final String name;
  final String email;
  final String role; // 'admin', 'vendor', 'customer'

  KisswaarUser({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
  });

  factory KisswaarUser.fromJson(Map<String, dynamic> json) {
    return KisswaarUser(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      role: json['role'] ?? 'customer',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'role': role,
    };
  }
}
