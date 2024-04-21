import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_with_bloc/posts_bloc.dart';
import 'package:posts_with_bloc/posts_events.dart';
import 'package:posts_with_bloc/posts_states.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) {
        final postsBloc = PostsBloc();
        postsBloc.add(FetchPostsEvent());
        return postsBloc;
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Posts with Bloc'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: BlocBuilder<PostsBloc, PostsStates>(
        builder: (context, state) {
          if (state is PostsInitial) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostsLoaded) {
            final posts = state.posts;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                );
              },
            );
          } else if (state is PostsError) {
            return Center(
              child: Text('Error: ${state.message}'),
            );
          } else {
            return const Text('Something went wrong');
          }
        },
      ),
    );
  }
}
