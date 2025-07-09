List<String> getVibeFilteredFeed(String vibeName) {
  switch (vibeName) {
    case 'Dark Mode Pulse':
      return ['Black Hoodie', 'Matte Sunglasses', 'Night Runner Sneakers'];
    case 'Urban Buzz':
      return ['Printed Oversized Tee', 'Street Cap', 'Neon Tracks'];
    case 'Calm Minimal':
      return ['Beige Sweatshirt', 'White Sneakers', 'Neutral Pants'];
    default:
      return ['Trending Picks', 'Popular Deals', 'Fresh Arrivals'];
  }
}
