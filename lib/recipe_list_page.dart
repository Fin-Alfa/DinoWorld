import 'package:flutter/material.dart';

class Recipe {
  final String name;
  final String description;
  final String ingredients;
  final String image;

  Recipe({
    required this.name,
    required this.description,
    required this.ingredients,
    required this.image,
  });
}

class RecipeListPage extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      name: 'Spaghetti Carbonara',
      description:
          'Hidangan pasta klasik Italia yang terbuat dari telur, keju, pancetta, dan lada.',
      ingredients:
          '• 200 gram spaghetti\n• 2 butir telur\n• 50 gram parmesan\n• 100 gram pancetta\n• Lada secukupnya',
      image: 'assets/images/spaghetti_carbonara.jpg',
    ),
    Recipe(
      name: 'Kari Ayam',
      description:
          'Kari ayam yang lezat dan pedas dibuat dengan campuran rempah-rempah dan santan.',
      ingredients:
          '• 500 gram ayam\n• 200 ml santan\n• 2 sendok makan bubuk kari\n• 3 buah kentang\n• 2 buah wortel\n• 1 batang serai\n• 4 lembar daun jeruk\n• Garam dan gula secukupnya',
      image: 'assets/images/kari_ayam.jpg',
    ),
    Recipe(
      name: 'Nasi Goreng',
      description:
          'Nasi yang digoreng dengan bumbu khas Indonesia, sering disajikan dengan telur dan ayam.',
      ingredients:
          '• 300 gram nasi putih\n• 2 butir telur\n• 100 gram ayam suwir\n• 2 siung bawang putih\n• 1 batang daun bawang\n• 2 sendok makan kecap manis\n• 1 sendok makan saus tiram\n• 1 sendok teh garam\n• Minyak secukupnya',
      image: 'assets/images/nasi_goreng.jpg',
    ),
    Recipe(
      name: 'Sate Ayam',
      description:
          'Daging ayam yang ditusuk dan dipanggang, disajikan dengan saus kacang.',
      ingredients:
          '• 500 gram daging ayam\n• Bumbu sate secukupnya\n• Saus kacang\n• Bawang merah goreng\n• Lontong potong-potong',
      image: 'assets/images/sate_ayam.jpg',
    ),
    Recipe(
      name: 'Gado-Gado',
      description:
          'Salad Indonesia yang terdiri dari sayuran rebus, tahu, tempe, dan saus kacang.',
      ingredients:
          '• 200 gram tahu\n• 200 gram tempe\n• 100 gram kacang panjang\n• 100 gram kol\n• 100 gram taoge\n• Telur rebus\n• Kerupuk\n• Saus kacang',
      image: 'assets/images/gado_gado.jpg',
    ),
    Recipe(
      name: 'Rendang',
      description:
          'Daging sapi yang dimasak perlahan dengan santan dan rempah-rempah hingga empuk.',
      ingredients:
          '• 500 gram daging sapi\n• 300 ml santan\n• 2 batang serai\n• 4 lembar daun jeruk\n• 5 lembar daun salam\n• 1 sendok makan asam jawa\n• Garam dan gula secukupnya',
      image: 'assets/images/rendang.jpg',
    ),
    Recipe(
      name: 'Bakso',
      description:
          'Bola daging yang disajikan dalam kuah kaldu dengan mi dan sayuran.',
      ingredients:
          '• 300 gram daging sapi\n• 100 gram tepung tapioka\n• 50 gram tepung terigu\n• 2 siung bawang putih\n• Garam, gula, merica secukupnya\n• 200 gram mi\n• 100 gram sawi\n• Kaldu sapi secukupnya',
      image: 'assets/images/bakso.jpg',
    ),
    Recipe(
      name: 'Pempek',
      description:
          'Makanan khas Palembang yang terbuat dari ikan dan sagu, disajikan dengan cuko.',
      ingredients:
          '• 500 gram ikan tenggiri\n• 200 gram tepung sagu\n• 2 butir telur\n• Garam, gula, penyedap rasa secukupnya\n• Air secukupnya\n• Cuko',
      image: 'assets/images/pempek.jpg',
    ),
    Recipe(
      name: 'Soto Ayam',
      description:
          'Sup ayam dengan kuah kuning yang disajikan dengan nasi, bihun, dan telur.',
      ingredients:
          '• 500 gram ayam\n• 200 gram bihun\n• 2 butir telur\n• 2 batang serai\n• 3 lembar daun jeruk\n• 2 lembar daun salam\n• 2 cm lengkuas\n• 2 cm jahe\n• Bawang merah, bawang putih, ketumbar, kunyit, garam secukupnya\n• Bawang goreng, seledri, bawang merah goreng untuk taburan',
      image: 'assets/images/soto_ayam.jpg',
    ),
    Recipe(
      name: 'Martabak Manis',
      description:
          'Kue tebal yang diisi dengan cokelat, keju, atau kacang, dan dilipat.',
      ingredients:
          '• 250 gram tepung terigu\n• 1 butir telur\n• 500 ml air\n• 100 gram gula pasir\n• 1 sendok makan ragi instan\n• 1/2 sendok teh soda kue\n• 1/2 sendok teh garam\n• Keju parut, cokelat meses, kacang sangrai secukupnya',
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
                              SizedBox(height: 8),
                              Text(
                                'Bahan:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                recipe.ingredients,
                                style: TextStyle(
                                  fontSize: 14,
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
