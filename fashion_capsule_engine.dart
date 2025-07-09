List<String> generateCapsule(List<String> styleTags) {
  final capsule = <String>[];

  if (styleTags.contains('🏃 Streetwear')) {
    capsule.addAll(['White Hoodie', 'Chunky Sneakers', 'Reflective Cap']);
  }

  if (styleTags.contains('🖤 Monochrome Fan')) {
    capsule.addAll(['Black Oversized Tee', 'Slim Cargo Pants', 'Matte Black Watch']);
  }

  if (styleTags.contains('🎯 Minimalist')) {
    capsule.addAll(['Beige Sweatshirt', 'Clean Sneakers', 'Neutral Beanie']);
  }

  return capsule.isEmpty ? ['Curate your style now!'] : capsule;
}
