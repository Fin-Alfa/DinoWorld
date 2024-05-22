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

class RecipeListPage extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      name: 'Spaghetti Carbonara',
      description:
          'Hidangan pasta klasik Italia yang terbuat dari telur, keju, pancetta, dan lada.',
      image: 'assets/images/spaghetti_carbonara.jpg',
    ),
    Recipe(
      name: 'Kari Ayam',
      description:
          'Kari ayam yang lezat dan pedas dibuat dengan campuran rempah-rempah dan santan.',
      image: 'assets/images/kari_ayam.jpg',
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
    Recipe(
      name: 'Pempek',
      description:
          'Makanan khas Palembang yang terbuat dari ikan dan sagu, disajikan dengan cuko.',
      image: 'assets/images/pempek.jpg',
    ),
    Recipe(
      name: 'Soto Ayam',
      description:
          'Sup ayam dengan kuah kuning yang disajikan dengan nasi, bihun, dan telur.',
      image: 'assets/images/soto_ayam.jpg',
    ),
    Recipe(
      name: 'Martabak Manis',
      description:
          'Kue tebal yang diisi dengan cokelat, keju, atau kacang, dan dilipat.',
      image: 'assets/images/martabak_manis.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/food_background.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return InkWell(
                  onTap: () {
                    // Navigasi ke halaman detail resep
                  },
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(16),
                          ),
                          child: Image.asset(
                            recipe.image,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recipe.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                recipe.description,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[700],
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RecipeListPage(),
  ));
}
