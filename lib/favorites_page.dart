import 'package:flutter/material.dart';

class Recipe {
  final String name;
  final String description;
  final String image;

  Recipe({
    required this.name,
    required this.description,
    required this.image,
  });
}

class FavoritesPage extends StatelessWidget {
  final List<Recipe> favoriteRecipes = [
    Recipe(
      name: 'Spaghetti Carbonara',
      description:
          'Hidangan pasta klasik Italia yang terbuat dari telur, keju, pancetta, dan lada.',
      image: 'assets/images/spaghetti_carbonara.jpg',
    ),
    Recipe(
      name: 'Nasi Goreng',
      description:
          'Nasi yang digoreng dengan bumbu khas Indonesia, sering disajikan dengan telur dan ayam.',
      image: 'assets/images/nasi_goreng.jpg',
    ),
    // Tambahkan resep favorit lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: favoriteRecipes.isEmpty
          ? Center(
              child: Text('Tidak ada favorit.'),
            )
          : ListView.builder(
              itemCount: favoriteRecipes.length,
              itemBuilder: (context, index) {
                final recipe = favoriteRecipes[index];
                return ListTile(
                  leading: Image.asset(
                    recipe.image,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(recipe.name),
                  subtitle: Text(recipe.description),
                  onTap: () {
                    // Navigasi ke halaman detail resep
                  },
                );
              },
            ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: FavoritesPage(),
  ));
}
