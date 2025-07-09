// 📛 Profile Name: ai_recommender.dart
// ✅ Copy this profile name in GitHub file creation form

import 'dart:convert';
import 'package:http/http.dart' as http;

class AiRecommender {
  final String apiKey;

  AiRecommender(this.apiKey);

  Future<String> getProductSuggestions(String prompt) async {
    const endpoint = 'https://api.openai.com/v1/completions';

    final response = await http.post(
      Uri.parse(endpoint),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'model': 'text-davinci-003',
        'prompt': prompt,
        'max_tokens': 100,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['choices'][0]['text'];
    } else {
      throw Exception('Failed to get suggestions');
    }
  }
}
