// 📛 Profile Name: search_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔍 Search Products')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Search for items...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              '🧠 Start typing to search products by name, category or tag.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
// 📛 Profile Name: search_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _queryController = TextEditingController();
  final List<String> tags = ['Hoodies', 'Shoes', 'Socks', 'Bags', 'Jewelry'];
  String selectedTag = '';

  final allProducts = [
    {'title': 'Kisswaar Hoodie XL', 'tags': ['Hoodies']},
    {'title': 'RoyalTrendz Shoes', 'tags': ['Shoes']},
    {'title': 'Neon Socks Pack', 'tags': ['Socks']},
    {'title': 'StreetBackpack Pro', 'tags': ['Bags']},
  ];

  List<Map<String, dynamic>> results = [];

  void _runSearch() {
    final query = _queryController.text.toLowerCase();
    setState(() {
      results = allProducts.where((p) {
        final matchesQuery = p['title']!.toLowerCase().contains(query);
        final matchesTag = selectedTag.isEmpty || p['tags']!.contains(selectedTag);
        return matchesQuery && matchesTag;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔍 Search Products')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _queryController,
              decoration: const InputDecoration(labelText: 'Search by keyword'),
              onChanged: (_) => _runSearch(),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: tags.map((tag) {
                  final active = selectedTag == tag;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ChoiceChip(
                      label: Text(tag),
                      selected: active,
                      onSelected: (_) {
                        setState(() {
                          selectedTag = active ? '' : tag;
                          _runSearch();
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: results.isEmpty
                  ? const Center(child: Text('No results found'))
                  : ListView.builder(
                      itemCount: results.length,
                      itemBuilder: (_, index) {
                        final item = results[index];
                        return Card(
                          child: ListTile(
                            leading: const Icon(Icons.shopping_bag),
                            title: Text(item['title']),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
