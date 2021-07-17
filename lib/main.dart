import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatefulWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dragon Ball Z'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  "imagens/eusougoku.png",
                ),
              ),
              Text("Olá, eu sou Goku", style: TextStyle(fontSize: 20)),
              ElevatedButton(
                child: Text("Olá Goku!"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dragon Ball Z'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    "imagens/goku2.png",
                  ),
                ),
                Text(
                    "Vamos fazer um pouco de publicidade hahaha!!, Você já assistiu algum dos meus animes?, se você ainda não assistiu vou deixar uma lista com o nome dos meus animes.",
                    style: TextStyle(fontSize: 20)),
                ElevatedButton(
                  child: Text("Ver a lista de animes"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TerceiraRota()),
                    );
                  },
                ),
                ElevatedButton(
                  child: Text("Ver seu KI"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuartaRota()),
                    );
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Voltar'),
                ),
              ],
            ),
          ),
        ));
  }
}

class TerceiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dragon Ball Z"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Dragon Ball'),
          ),
          ListTile(
            title: Text('Dragon Ball Z'),
          ),
          ListTile(
            title: Text('Dragon Ball GT'),
          ),
          ListTile(
            title: Text('Dragon Ball Kai'),
          ),
          ListTile(
            title: Text('Dragon Ball The Final Chapters'),
          ),
          ListTile(
            title: Text('Dragon Ball Super'),
          ),
          ListTile(
            title: Text('Dragon Ball Heroes'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Voltar'),
          ),
        ],
      ),
    );
  }
}

class QuartaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dragon Ball Z"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "imagens/8mil.jpg",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            )
          ],
        ),
      ),
    );
  }
}
