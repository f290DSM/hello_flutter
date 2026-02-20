import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

final imageUrl =
    'https://images.pexels.com/photos/4485826/pexels-photo-4485826.jpeg';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Flutter App'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Enzo', icon: Icon(Icons.person)),
                Tab(text: 'Pessoal', icon: Icon(Icons.favorite)),
                Tab(text: 'Projetos', icon: Icon(Icons.commit)),
              ],
            ),
          ),
          body: TabBarView(children: [Tela1(), Tela2(), Tela3()]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.web),
          ),
        ),
      ),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Image.network(imageUrl)]);
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  static final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Placeholder(child: Center(child: Text('Pessoal')));
  }
}

class Tela3 extends StatelessWidget {
  const Tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(child: Center(child: Text('Projetos')));
  }
}
