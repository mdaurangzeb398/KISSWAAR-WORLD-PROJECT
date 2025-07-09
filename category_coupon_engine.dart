String? getCategoryCoupon(Map<String, int> categoryData) {
  if (categoryData.isEmpty) return null;

  final sorted = categoryData.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  final topCategory = sorted.first.key;

  switch (topCategory) {
    case 'Hoodies':
      return 'HOODIE10'; // 10% off
    case 'Sneakers':
      return 'SNEAKS15'; // ₹150 off
    case 'Jackets':
      return 'JACK20'; // ₹200 off
    default:
      return 'STYLE5'; // ₹50 off on any fashion
  }
}
