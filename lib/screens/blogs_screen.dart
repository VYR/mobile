import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogsScreen extends StatelessWidget {
  final List<String> categories = [
    'All Categories',
    'Alternate Investing',
    'Alternative Investments',
    'Corporate Bonds',
    'Fun Read',
    'Investing myths',
    'Investment Basics',
    'Invoice Discounting',
    'NRI Investment',
    'Personal Finance',
    'Products'
  ];

  final List<Map<String, String>> items = [
    {
      'row1Img': 'assets/icon/blogs-img1.jpeg',
      'row1Heading': 'Alternative Investments',
      'row1Time': '2 min read',
      'row1Title': 'Exclusive ₹1000* Reward Awaits You on Your First Investment this August!',
      'row1Description':
          'We are thrilled to unveil exclusive offers tailored just for our valued investors embarking on their financial journey with us! From August 1 to 31...',
      'row1Date': 'July 22, 2024',
      'link': 'https://kuberascheme.com/knowledge-center/blog-details'
    },
    {
      'row1Img': 'assets/icon/blogs-img2.jpeg',
      'row1Heading': 'Investment Basics, NRI Investment, Personal Finance',
      'row1Time': '9 min read',
      'row1Title': 'NRI Accounts: Types, Benefits, Comparison: Complete Guide',
      'row1Description':
          'Residency Status in India: A Rundown According to the income tax rules of India, a citizen of India or a person of Indian Origin who is residing ou...',
      'row1Date': 'Jun 10, 2024',
      'link': 'https://kuberascheme.com/knowledge-center/blog-details'
    },
  ];

  BlogsScreen({super.key});

  Future<void> _launchURL(String url) async {
  final Uri uri = Uri.parse('https://kuberascheme.com/knowledge-center/blog-details');
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

  Future<void> goToNextPage(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Blogs')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Categories Dropdown
            DropdownButton<String>(
              hint: const Text('All Categories'),
              isExpanded: true,
              items: categories.map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (value) {},
            ),
            const SizedBox(height: 20),

            // Blogs List
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return GestureDetector(
                    onTap: () => goToNextPage(item['link'] ?? ''),
                    child: Card(
                      margin: const EdgeInsets.only(bottom: 26.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(item['row1Img'] ?? '', width: 300,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(item['row1Heading'] ?? ''),
                                    Text(item['row1Time'] ?? '',
                                    style: const TextStyle(fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  item['row1Title'] ?? '',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                const SizedBox(height: 8),
                                Text(item['row1Description'] ?? ''),
                                const SizedBox(height: 8),
                                Text(item['row1Date'] ?? '',
                                    style: const TextStyle(color: Colors.grey)),
                                const SizedBox(height: 8),
                                GestureDetector(
                                  onTap: () => _launchURL(item['link'] ?? ''),
                                  child: const Text(
                                    'Read More',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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

