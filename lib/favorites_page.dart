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

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<Recipe> favoriteRecipes = [
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
    Recipe(
      name: 'Sate Ayam',
      description:
          'Daging ayam yang ditusuk dan dipanggang, disajikan dengan saus kacang.',
      image: 'assets/images/sate_ayam.jpg',
    ),
    Recipe(
      name: 'Gado-Gado',
      description:
          'Salad Indonesia yang terdiri dari sayuran rebus, tahu, tempe, dan saus kacang.',
      image: 'assets/images/gado_gado.jpg',
    ),
    Recipe(
      name: 'Rendang',
      description:
          'Daging sapi yang dimasak perlahan dengan santan dan rempah-rempah hingga empuk.',
      image: 'assets/images/rendang.jpg',
    ),
    Recipe(
      name: 'Bakso',
      description:
          'Bola daging yang disajikan dalam kuah kaldu dengan mi dan sayuran.',
      image: 'assets/images/bakso.jpg',
    ),
    // Tambahkan resep favorit lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Tindakan ketika tombol Tambah ditekan
              // Di sini bisa ditambahkan logika untuk menambah resep ke daftar favorit
            },
          ),
          PopupMenuButton<String>(
            onSelected: (String value) {
              // Tindakan berdasarkan pilihan menu
              if (value == 'clear') {
                setState(() {
                  favoriteRecipes.clear();
                });
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'clear',
                  child: Text('Hapus Semua'),
                ),
              ];
            },
          ),
        ],
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
