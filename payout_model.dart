// 📛 Profile Name: payout_model.dart
// ✅ Copy this profile name in GitHub file creation form

class Payout {
  final String vendorId;
  final String vendorName;
  final double amount;
  final String status; // pending, paid

  Payout({
    required this.vendorId,
    required this.vendorName,
    required this.amount,
    required this.status,
  });

  factory Payout.fromJson(Map<String, dynamic> json) {
    return Payout(
      vendorId: json['vendorId'] ?? '',
      vendorName: json['vendorName'] ?? '',
      amount: (json['amount'] ?? 0).toDouble(),
      status: json['status'] ?? 'pending',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'vendorId': vendorId,
      'vendorName': vendorName,
      'amount': amount,
      'status': status,
    };
  }
}
