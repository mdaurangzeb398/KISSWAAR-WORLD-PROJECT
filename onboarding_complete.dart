// 📛 Profile Name: onboarding_complete.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class OnboardingCompleteScreen extends StatelessWidget {
  const OnboardingCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.rocket_launch, size: 80, color: Colors.green),
              const SizedBox(height: 20),
              const Text('🎉 You’re All Set!', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text(
                'Your Kisswaar journey begins now. Access dashboard, place orders, earn rewards!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                icon: const Icon(Icons.home),
                label: const Text('Go to Dashboard'),
                onPressed: () => Navigator.pushNamed(context, '/user_dashboard'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
