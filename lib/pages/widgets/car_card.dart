// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:car_store_app/models/car.dart';
import 'package:car_store_app/pages/widgets/book_now_buttom.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CarCard extends StatefulWidget {
  const CarCard({super.key, required this.car});
  final Car car;

  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      height: size.height * 0.45,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          gradient: LinearGradient(
              colors: widget.car.colors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      // height: size.height * 0.45,
      // width: size.width,
      // color: e.colors.first,
      // child: Text(
      //   e.nome,
      //   style: TextStyle(
      //     color: Colors.white,
      //   ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  widget.car.isFavorite = !widget.car.isFavorite;
                }),
                child: widget.car.isFavorite
                    ? Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.favorite_outline,
                        size: 30,
                        color: Colors.white,
                      ),
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset(
                widget.car.imagem.first,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.car.nome,
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        widget.car.tipo,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        widget.car.preco,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Base Price',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.7),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Row(
          children: [
            Spacer(
              flex: 2,
            ),
            Text(
              'Details',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            Spacer(
              flex: 3,
            ),
            BookNowButton(),
          ],
        )
      ]),
    );
  }
}
