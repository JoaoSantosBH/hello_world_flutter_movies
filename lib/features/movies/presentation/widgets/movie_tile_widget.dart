import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../login/presentation/login_page.dart';
import '../../domain/entities/movie.dart';

class MovieTileWidget extends StatelessWidget {
  final Movie movie;

  const MovieTileWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.surface,
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3)
            )
          ],
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
          child: Image.network(
              movie.posterImageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  void onTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const LoginPage(), //TODO alterar para tela detalhes
      ),
    );
  }
}
