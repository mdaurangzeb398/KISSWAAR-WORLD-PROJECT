String getMoodVibe(List<String> styleTags) {
  if (styleTags.contains('🖤 Monochrome Fan')) return 'Dark Mode Pulse';
  if (styleTags.contains('🏃 Streetwear')) return 'Urban Buzz';
  if (styleTags.contains('🌿 Quiet Style Combo')) return 'Calm Minimal';
  return 'Default Shopper Glow';
}
