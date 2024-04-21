import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:posts_with_provider/post.dart';

class PostsProvider extends ChangeNotifier {
  List<Post> _posts = [];
  bool _isLoading = false;

  List<Post> get posts => _posts;
  bool get isLoading => _isLoading;

  Future<void> fetchPosts() async {
    _isLoading = true;
    notifyListeners();

    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      _posts = (jsonDecode(response.body) as List)
          .map((post) => Post.fromJson(post))
          .toList();
    } else {
      print('Failed to fetch posts');
    }

    _isLoading = false;
    notifyListeners();
  }
}
