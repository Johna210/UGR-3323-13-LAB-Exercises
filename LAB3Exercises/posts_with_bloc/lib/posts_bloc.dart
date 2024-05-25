import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;

import 'package:posts_with_bloc/posts_states.dart';
import 'package:posts_with_bloc/posts_events.dart';
import 'package:posts_with_bloc/post.dart';

class PostsBloc extends Bloc<PostsEvent, PostsStates> {
  PostsBloc() : super(PostsInitial()) {
    on<PostsEvent>(
      (event, emit) async {
        if (event is LoadingEvent) {
          emit(PostsLoading());
        } else if (event is InitialEvent) {
          emit(PostsInitial());
        } else if (event is FetchPostsEvent) {
          final response = await http
              .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
          if (response.statusCode == 200) {
            final List<dynamic> responseBody = jsonDecode(response.body);
            final List<Post> posts =
                responseBody.map((post) => Post.fromJson(post)).toList();
            emit(PostsLoaded(posts));
          } else {
            emit(PostsError('Failed to load posts'));
          }
        }
      },
    );
  }
}
