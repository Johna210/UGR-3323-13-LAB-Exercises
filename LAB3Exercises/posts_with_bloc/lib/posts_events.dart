import 'package:posts_with_bloc/post.dart';

abstract class PostsEvent {}

class InitialEvent extends PostsEvent {}

class LoadingEvent extends PostsEvent {}

class FetchPostsEvent extends PostsEvent {} // Add this line

class PostsLoadedEvent extends PostsEvent {
  final List<Post> posts;

  PostsLoadedEvent(this.posts);
}
