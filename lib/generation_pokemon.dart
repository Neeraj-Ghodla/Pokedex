import 'package:flutter/material.dart';
import 'package:pokedex/pokemon_detail.dart';

class ShowGenerationPokemon extends StatelessWidget {
  final String region;
  final List<String> imagePaths;

  ShowGenerationPokemon(this.region, this.imagePaths);

  /*
  generation 1 : 1 - 151
  generation 2 : 152 - 251
  generation 3 : 252 - 386
  generation 4 : 387 - 493
  generation 5 : 494 - 649
  generation 6 : 650 - 721
  */

  final List<String> regions = [
    "All Pokemons",
    "Kanto Region",
    "Jhoto Region",
    "Hoenn Region",
    "Sinnoh Region",
    "Unova Region",
    "Kalos Region",
  ];

  List<String> getGeneration(region) {
    List<String> names;
    if (region == "All Pokemons") {
      names = imagePaths;
    } else if (region == "Kanto Region") {
      names = imagePaths.sublist(0, 151);
    } else if (region == "Jhoto Region") {
      names = imagePaths.sublist(151, 251);
    } else if (region == "Hoenn Region") {
      names = imagePaths.sublist(251, 386);
    } else if (region == "Sinnoh Region") {
      names = imagePaths.sublist(386, 493);
    } else if (region == "Unova Region") {
      names = imagePaths.sublist(493, 649);
    } else if (region == "Kalos Region") {
      names = imagePaths.sublist(649, 721);
    }

    int index = regions.indexOf(region);
    regions.removeAt(index);

    return names;
  }

  @override
  Widget build(BuildContext context) {
    List<String> names = getGeneration(region);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          region,
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Categories"),
            ),
            Column(
              children: regions
                  .map((g) => ListTile(
                        title: Text(
                          g,
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ShowGenerationPokemon(g, imagePaths),
                            ),
                          );
                        },
                      ))
                  .toList(),
            )
          ],
        ),
      ),
      body: GridView.count(
        primary: true,
        padding: EdgeInsets.all(1.0),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: pokemonCard(context, names),
      ),
    );
  }

  List<Widget> pokemonCard(context, List<String> names) {
    return names
        .map(
          (name) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PokemonPage(
                            "images/400x400/$name",
                            name,
                          ),
                    ),
                  );
                },
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Container(
                        width: 100.0,
                        height: 100.0,
                        child: Hero(
                            tag: name,
                            child: Image.asset("images/400x400/$name")),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                      ),
                      Text(
                        "${name.substring(3, name.length - 4)}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
        )
        .toList();
  }
}
