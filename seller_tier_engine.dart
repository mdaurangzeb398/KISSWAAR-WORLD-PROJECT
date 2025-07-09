String getSellerTier(int score, double rating, int deliverySpeedDays) {
  if (score >= 950 && rating >= 4.8 && deliverySpeedDays <= 2) return '🏆 Platinum';
  if (score >= 850 && rating >= 4.5) return '🥇 Gold';
  if (score >= 750 && rating >= 4.0) return '🥈 Silver';
  if (score >= 600) return '🥉 Bronze';
  return '🔰 Starter';
}
