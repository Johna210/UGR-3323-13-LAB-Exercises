import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import 'package:posts_with_riverpod/post.dart';

class PostsNotifier extends StateNotifier<List<Post>> {
  PostsNotifier() : super([]);

  Future<void> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final List<dynamic> postsJson = jsonDecode(response.body);
    final List<Post> posts =
        postsJson.map((postJson) => Post.fromJson(postJson)).toList();
    state = posts;
  }
}

final postsProvider = StateNotifierProvider<PostsNotifier, List<Post>>(
  (ref) {
    final postsNotifier = PostsNotifier();
    postsNotifier.fetchPosts();
    return postsNotifier;
  },
);
