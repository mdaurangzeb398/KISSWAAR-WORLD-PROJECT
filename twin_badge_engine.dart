String generateTwinBadge(List<String> sharedTags) {
  if (sharedTags.contains('🏃 Streetwear') && sharedTags.contains('🎯 Minimalist')) {
    return '🧢 Capsule Comrades';
  }
  if (sharedTags.contains('🖤 Monochrome Fan')) {
    return '🪞 Mirror Shopperz';
  }
  if (sharedTags.length >= 3) {
    return '❤️ Style Soulmates';
  }
  return '👯 Vibe Match';
}
