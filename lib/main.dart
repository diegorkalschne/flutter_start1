import 'package:flutter/material.dart';

//A função main() é a porta de entrada do seu código Dart
void main() {
  //A função runApp() é responsável por inicializar o seu aplicativo
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp irá aplicar um estilo conhecido como "Material Design" (o qual é utilizado por padrão em aplicativos Android)
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Primeiro App',

      //Qual será a primeira "tela" a ser exibida no meu aplicativo?
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //O Widget Scaffold() fornece uma estrutura que auxilia na criação de cada tela
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //Widget para carregar uma imagem através da internet
          Image.network(
            'https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png',
          ),

          //Widget para exibir um texto
          Text(
            'Meu Primeiro App em Flutter',
            style: TextStyle(
              fontSize: 25,
            ),
          ),

          //Widget para criação de um botão
          ElevatedButton(
            onPressed: () {
              print("Clicou no botão");
            },
            child: Text('Clique Aqui'),
          ),

          //Widget utilizado para alinhar os demais Widgets na horizontal (lado a lado)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Widget utilizado para alinhar os demais Widgets na vertical (um abaixo do outro)
              Column(
                children: [
                  //Widget utilizado para a exibição de um ícone
                  Icon(
                    Icons.add_a_photo_outlined,
                    color: Colors.blue,
                  ),
                  
                  //Widget utilizado para "criar um espaço" em branco
                  SizedBox(height: 10),
                  Text('Câmera'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.green,
                  ),
                  SizedBox(height: 10),
                  Text('Mensagem'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.purple,
                  ),
                  SizedBox(height: 10),
                  Text('Pesquisar'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
