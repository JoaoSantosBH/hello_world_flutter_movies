import 'package:flutter/material.dart';
import 'package:hello_world_flutter_movies/core/foundation/states/view_state_builder.dart';
import 'package:hello_world_flutter_movies/features/movies/presentation/viewmodel/movies_view_model.dart';
import 'package:hello_world_flutter_movies/features/movies/presentation/widgets/movie_tile_widget.dart';

import '../../../core/constants/keys.dart';
import '../../../core/foundation/injector/get.dart';
import '../../../core/i18n/i18n.dart';
import '../domain/entities/movie.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  final MoviesViewModel viewModel = get();

  @override
  void initState() {
    viewModel.fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: I18n.strings.tabAllMovies),
              Tab(text: I18n.strings.tabFavoriteMovies,),
            ],
          ),
          key: const Key(keyMoviesListAppBar),
          title: Text(I18n.strings.textMoviesListTitle),
          automaticallyImplyLeading: false,// remove backbutton
        ),
        body: ViewStateBuilder<List<Movie>>(
          state: viewModel.moviesState,
          builder: (_,state) {
            final movies = state.value;

            if(movies !=null && movies.isNotEmpty){
              return GridView.builder(
                padding: const EdgeInsets.all(16.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.7,
                ),
                itemCount: movies.length,
                itemBuilder: (context, index){
                  final movie = movies[index];
                  return MovieTileWidget(movie: movie);
                },
              );
            }

            if(state.loading) {
              return const Center(
                key: Key(keyMoviesCicularProgressIndicator),
                child: CircularProgressIndicator(),
              );
            }

            if(state.error != null) {
              return Center(
                key: const Key(keyMoviesErrorText),
                child: Text(state.error!.message),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
