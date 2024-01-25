// ignore_for_file: unnecessary_import, annotate_overrides

import 'package:car_store_app/colors.dart';
import 'package:car_store_app/pages/widgets/horizontal_tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:car_store_app/models/car.dart';
import 'package:flutter/widgets.dart';

import 'widgets/car_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Criando controlador da minha 'scroll' da TabBar
  late ScrollController _scrollController;

  //Inicializando meu 'scroll'
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    //MediaQuery é uma classe que fornece acesso às
    //características de mídia do ambiente em que o
    //widget está sendo executado. O método of(context)
    //retorna um objeto MediaQueryData associado ao contexto fornecido.
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.only(top: 25),
            //Decoração do meu container
            decoration: const BoxDecoration(
              //Gradiente no meu container com as cores criadas

              gradient: LinearGradient(
                  colors: [blackPrimary, blackSec],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            //Aqui meu objeto 'size' criado está assumindo as dimensões da tela
            //portanto, o container ocupará toda a largura da tela do dispositivo
            width: size.width,
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: size.width * 0.5,
                ),
                SizedBox(
                  height: 25,
                ),
                HorizontalTabBar(
                  onTap: (index) {
                    setState(() {
                      _scrollToElement(index);
                    });
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: carros.map((e) => CarCard(car: e)).toList(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _scrollToElement(int index) {
    double elementHeight = MediaQuery.of(context).size.height * 0.45;
    _scrollController.animateTo(index * elementHeight,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
