String getVibeSoundtrack(String vibeName) {
  switch (vibeName) {
    case 'Dark Mode Pulse':
      return 'assets/sounds/dark_pulse.mp3';
    case 'Urban Buzz':
      return 'assets/sounds/urban_buzz.mp3';
    case 'Calm Minimal':
      return 'assets/sounds/calm_minimal.mp3';
    default:
      return 'assets/sounds/default_glow.mp3';
  }
}
