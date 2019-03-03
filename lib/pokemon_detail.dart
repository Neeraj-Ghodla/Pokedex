import 'package:flutter/material.dart';
import 'dart:convert';

class PokemonPage extends StatelessWidget {
  final String imagePath;
  final String pokemonName;

  PokemonPage(this.imagePath, this.pokemonName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          pokemonName.substring(3, pokemonName.length - 4),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  width: 250,
                  height: 250,
                  child: Hero(
                    tag: pokemonName,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Text(
                  pokemonName.substring(3, pokemonName.length - 4),
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  child: FutureBuilder(
                    future: DefaultAssetBundle.of(context)
                        .loadString("assets/pokedex.json"),
                    builder: (context, snapshot) {
                      var pokedex = json.decode(snapshot.data.toString());

                      return pokedex != null
                          ? Container(
                              child: pokemonStats(pokedex),
                            )
                          : Container();
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget pokemonStats(pokedex) {
    String name = pokemonName.substring(0, 3);
    int pokemonID;

    if (name.substring(0, 2) == "00") {
      pokemonID = int.parse(name.substring(2, 3)) - 1;
    } else if (name.substring(0, 1) == "0") {
      pokemonID = int.parse(name.substring(1, 3)) - 1;
    } else {
      pokemonID = int.parse(name) - 1;
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      width: 300.0,
      padding: EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(
              "Type: ${pokedex[pokemonID]['type']}",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Text(
              "Stats",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            Text(
              "HP: ${pokedex[pokemonID]["base"]["HP"]}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Attack: ${pokedex[pokemonID]["base"]["Attack"]}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Defense: ${pokedex[pokemonID]["base"]["Defense"]}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Sp. Attack: ${pokedex[pokemonID]["base"]["Sp. Attack"]}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Sp. Defense: ${pokedex[pokemonID]["base"]["Sp. Defense"]}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Speed: ${pokedex[pokemonID]["base"]["Speed"]}",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
