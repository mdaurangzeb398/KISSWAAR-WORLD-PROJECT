List<String> getBuyerStyleTags(Map<String, int> categoryData, List<String> brandLikes, List<String> colorPrefs) {
  final tags = <String>[];

  if (categoryData['Sneakers'] != null && categoryData['Sneakers']! > 5) tags.add('🏃 Streetwear');
  if (categoryData['Jackets'] != null && categoryData['Jackets']! > 4) tags.add('🧥 Winter Lover');
  if (colorPrefs.contains('Black')) tags.add('🖤 Monochrome Fan');
  if (brandLikes.contains('MinimalEdge')) tags.add('🎯 Minimalist');

  return tags.isEmpty ? ['🛍️ Explorer'] : tags;
}
