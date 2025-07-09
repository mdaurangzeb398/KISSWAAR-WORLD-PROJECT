// 📛 Profile Name: coupon_model.dart
// ✅ Copy this profile name in GitHub file creation form

class Coupon {
  final String code;
  final double discount; // in percentage
  final bool isActive;

  Coupon({
    required this.code,
    required this.discount,
    required this.isActive,
  });

  factory Coupon.fromJson(Map<String, dynamic> json) {
    return Coupon(
      code: json['code'] ?? '',
      discount: (json['discount'] ?? 0).toDouble(),
      isActive: json['isActive'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'discount': discount,
      'isActive': isActive,
    };
  }
}
