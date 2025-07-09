List<String> getStyleIntersection(List<String> buyerA, List<String> buyerB) {
  return buyerA.toSet().intersection(buyerB.toSet()).toList();
}

String generateTwinCapsuleName(List<String> sharedTags) {
  if (sharedTags.contains('🖤 Monochrome Fan')) return '🖤 Shadow Sync Pack';
  if (sharedTags.contains('🏃 Streetwear')) return '💥 Alley Duo Drop';
  if (sharedTags.contains('🎯 Minimalist')) return '🌿 Quiet Style Combo';
  return '👯 Twin Capsule';
}
